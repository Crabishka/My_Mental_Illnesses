BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "product" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "product" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text,
    "price" double precision NOT NULL,
    "oldPrice" double precision,
    "pictures" json
);


--
-- MIGRATION VERSION FOR sneaker
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sneaker', '20241010132339625', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241010132339625', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
