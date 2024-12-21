import 'dart:math';

import 'package:serverpod/serverpod.dart';
import 'package:sneaker_server/src/generated/protocol.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    try {
      final brand = await Brand.db.findById(session, 1);
      if (brand == null) {
        return 'Not Found';
      }
      // try {
      //   await Future.any([
      //     session.db.unsafeSimpleQuery(''
      //         '''
      //         BEGIN;
      //         SELECT * FROM brand WHERE id = 1 FOR UPDATE;
      //        pg_sleep(5);
      //         COMMIT;
      //         '''),
      //     session.db.unsafeSimpleQuery(''
      //         '''
      //         BEGIN;
      //         SELECT * FROM brand WHERE id = 1 FOR UPDATE;
      //          COMMIT;
      //         ''')
      //   ]);
      // } catch (e) {
      //   print(e.toString());
      // }

      session.db.transaction((transaction) async {
        try {
          var brand = await Brand.db.findById(
            session,
            1,
          );
          print('Before First update ${brand!.price}');
          await session.db.unsafeQuery(''
              '''
              BEGIN;
              SELECT * FROM BRAND WHERE id = 1 for UPDATE;
              UPDATE BRAND SET price = 300 WHERE ID = 1;
              COMMIT;
              ''');

          // await Brand.db.updateRow(
          //   session,
          //   brand.copyWith(price: brand.price + 20),
          // );
          // brand = await Brand.db.findById(
          //   session,
          //   1,
          // );
          // print('After First update ${brand!.price}');
        } catch (e) {
          print(e.toString());
        }
      }, settings: TransactionSettings(isolationLevel: IsolationLevel.readUncommitted));
      // Транзакция
      await session.db.transaction((transaction) async {
        try {

          await session.db.unsafeQuery('SELECT * FROM BRAND WHERE id = 1 for UPDATE');
          var brand = await Brand.db.findById(
            session,
            1,
          );
          print('Before second Read ${brand!.price}');
          await Brand.db.updateRow(
            session,
            brand.copyWith(price: brand.price + 30),
          );
          brand = await Brand.db.findById(
            session,
            1,
          );
          print('After second Read ${brand!.price}');
        } catch (e) {
          print(e.toString());
        }
      }, settings: TransactionSettings(isolationLevel: IsolationLevel.readUncommitted));
    } catch (e) {
      print(e.toString());
    }

    // session.db.transaction(
    //   (transaction) async {
    //     Brand.db.updateRow(
    //       session,
    //       brand.copyWith(
    //         is_accepted: true,
    //       ),
    //     );
    //   },
    // );
    //
    // Brand.db.updateRow(
    //   session,
    //   brand.copyWith(
    //     is_accepted: true,
    //   ),
    // );
    //   await session.db.transaction(() async {
    //     // Явная блокировка
    //     await session.db.query('LOCK TABLE brand IN EXCLUSIVE MODE');
    //
    //     // Выполнение операций с брендом
    //     await session.db.update('brand', {
    //       'isAccepted': true,
    //     }, where: 'id = ?', whereArgs: [brandId]);
    //   });
    // }
    // session.db.unsafeQuery('''
    //   SELECT * FROM comment  c
    //     JOIN brand as b
    //     ON b.id = brand_id
    //     AND 4 > (
    // 	    SELECT AVG(c.rating)
    // 	    FROM comment as c
    // 		    JOIN brand as nb
    // 		    ON c.brand_id = nb.id
    // 		    AND b.id = nb.id
    //     )
    //     INNER JOIN moderator m
    //     ON m.id = accepted_by_id
    //     AND (
    //       SELECT COUNT(*)
    //  		    FROM comment c_inner
    //  		      WHERE c_inner.accepted_by_id = m.id
    //  		      AND c_inner.is_accepted = TRUE)
    //  		    > (
    //  		  SELECT COUNT(*)
    // 		    FROM comment c_inner
    // 		    WHERE c_inner.accepted_by_id = m.id
    // 		    AND c_inner.is_accepted = FALSE
    //     ) * 2
    //   WHERE is_accepted = TRUE;
    //   ''');
    return 'Hello $name';
  }

  Future<String> comments(Session session) async {
    final moderators = await Moderator.db.find(session);
    final users = await User.db.find(session);
    var brands = await Brand.db.find(session);
    final random = Random(42);

    for (int i = 0; i < 13; i++) {
      final moderatorId = 1;
      final brand = brands[random.nextInt(1000) % brands.length];
      final userId = random.nextInt(1000) % (users.length);
      final user = users[userId];
      final moderator = moderators[moderatorId];
      final rating = (random.nextInt(30) + 1) / 10.0;

      final comment = Comment(
        name: getRandomString(10),
        description: getRandomString(140),
        rating: rating,
        pictures: ['commentA1.png'],
        user: user,
        is_accepted: true,
        brand: brand,
        userId: user.id!,
        brandId: brand.id!,
        accepted_byId: moderator.id!,
      );

      try {
        Comment.db.insertRow(session, comment);
      } catch (e) {
        print(e);
      }
    }

    print('Done');

    /// create TYT
    return 'Hello $name';
  }

  final _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  String getRandomString(int length) =>
      String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
