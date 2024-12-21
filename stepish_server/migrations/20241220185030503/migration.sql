BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "product" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "brand" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text,
    "price" double precision NOT NULL,
    "oldPrice" double precision,
    "pictures" json,
    "manufacturerId" bigint NOT NULL,
    "isAccepted" boolean NOT NULL DEFAULT false
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "comment" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "userId" bigint NOT NULL,
    "brandId" bigint NOT NULL,
    "acceptedById" bigint NOT NULL,
    "description" text,
    "rating" double precision NOT NULL,
    "pictures" json,
    "isAccepted" boolean NOT NULL DEFAULT false
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "manufacturer" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text,
    "pictures" json
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "moderator" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "login" text NOT NULL,
    "password" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "login" text NOT NULL,
    "password" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "brand"
    ADD CONSTRAINT "brand_fk_0"
    FOREIGN KEY("manufacturerId")
    REFERENCES "manufacturer"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "comment"
    ADD CONSTRAINT "comment_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "comment"
    ADD CONSTRAINT "comment_fk_1"
    FOREIGN KEY("brandId")
    REFERENCES "brand"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "comment"
    ADD CONSTRAINT "comment_fk_2"
    FOREIGN KEY("acceptedById")
    REFERENCES "moderator"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR sneaker
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sneaker', '20241220185030503', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241220185030503', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
