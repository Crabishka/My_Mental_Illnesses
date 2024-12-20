import 'dart:math';

import 'package:serverpod/serverpod.dart';
import 'package:sneaker_server/src/generated/protocol.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    List<Manufacturer> manufacturers = [
      Manufacturer(
          name: 'Manufacturer A',
          description: 'Description of Manufacturer A',
          pictures: ['pictureA1.png', 'pictureA2.png']),
      Manufacturer(name: 'Manufacturer B', description: 'Description of Manufacturer B', pictures: ['pictureB1.png']),
      Manufacturer(
          name: 'Manufacturer C',
          description: 'Description of Manufacturer C',
          pictures: ['pictureC1.png', 'pictureC2.png', 'pictureC3.png']),
    ];

    manufacturers = await Manufacturer.db.insert(session, manufacturers);

    List<Moderator> moderators = [
      Moderator(name: 'Moderator A', login: 'modA', password: 'passwordA'),
      Moderator(name: 'Moderator B', login: 'modB', password: 'passwordB'),
    ];

    moderators = await Moderator.db.insert(session, moderators);

    List<User> users = [
      User(name: 'User A', login: 'userA', password: 'passwordA'),
      User(name: 'User B', login: 'userB', password: 'passwordB'),
      User(name: 'User C', login: 'userC', password: 'passwordC'),
    ];

    users = await User.db.insert(session, users);

    List<Brand> brands = [
      Brand(
        name: 'Brand A',
        description: 'Description of Brand A',
        price: 100.0,
        oldPrice: 120.0,
        pictures: ['brandA1.png', 'brandA2.png'],
        manufacturer: manufacturers[0],
        manufacturerId: manufacturers[0].id ?? -1,
      ),
      Brand(
        name: 'Brand AA',
        description: 'Description of Brand AA',
        price: 100.0,
        oldPrice: 120.0,
        pictures: ['brandA1.png', 'brandA2.png'],
        manufacturer: manufacturers[0],
        manufacturerId: manufacturers[0].id ?? -1,
      ),
      Brand(
        name: 'Brand AAA',
        description: 'Description of Brand AA',
        price: 100.0,
        oldPrice: 120.0,
        pictures: ['brandA1.png', 'brandA2.png'],
        manufacturer: manufacturers[0],
        manufacturerId: manufacturers[0].id ?? -1,
      ),
      Brand(
        name: 'Brand B',
        description: 'Description of Brand B',
        price: 200.0,
        pictures: ['brandB1.png', 'brandB2.png'],
        manufacturer: manufacturers[1],
        manufacturerId: manufacturers[1].id ?? -1,
      ),
      Brand(
        name: 'Brand BB',
        description: 'Description of Brand BB',
        price: 200.0,
        pictures: ['brandB1.png', 'brandB2.png'],
        manufacturer: manufacturers[1],
        manufacturerId: manufacturers[1].id ?? -1,
      ),
      Brand(
        name: 'Brand BBB',
        description: 'Description of Brand BBB',
        price: 200.0,
        pictures: ['brandB1.png', 'brandB2.png'],
        manufacturer: manufacturers[1],
        manufacturerId: manufacturers[1].id ?? -1,
      ),
      Brand(
        name: 'Brand C',
        description: 'Description of Brand C',
        price: 300.0,
        oldPrice: 350.0,
        pictures: ['brandC1.png'],
        manufacturer: manufacturers[2],
        manufacturerId: manufacturers[2].id ?? -1,
      ),
      Brand(
        name: 'Brand CC',
        description: 'Description of Brand CC',
        price: 300.0,
        oldPrice: 350.0,
        pictures: ['brandC1.png'],
        manufacturer: manufacturers[2],
        manufacturerId: manufacturers[2].id ?? -1,
      ),
      Brand(
        name: 'Brand CCC',
        description: 'Description of Brand CCC',
        price: 300.0,
        oldPrice: 350.0,
        pictures: ['brandC1.png'],
        manufacturer: manufacturers[2],
        manufacturerId: manufacturers[2].id ?? -1,
      ),
    ];

    brands = await Brand.db.insert(session, brands);

    return 'Hello $name';
  }


  Future<String> comments(Session session) async {
    final moderators = await Moderator.db.find(session);
    final users = await User.db.find(session);
    var brands = await Brand.db.find(session);
    final random = Random(42);

    for (int i = 0; i < 10; i++) {
      final moderatorId = random.nextInt(1000) % (moderators.length);
      final brand = brands[random.nextInt(1000) % brands.length];
      final userId = random.nextInt(1000) % (users.length);
      final user = users[userId];
      final moderator = moderators[moderatorId];

      final comment = Comment(
        name: getRandomString(10),
        description: getRandomString(140),
        rating: (random.nextInt(50) + 1) / 10.0,
        pictures: ['commentA1.png'],
        user: user,
        isAccepted: true,
        brand: brand,
        userId: user.id!,
        brandId: brand.id!,
        acceptedById: moderator.id!,
      );

      Comment.db.insertRow(session, comment);
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
