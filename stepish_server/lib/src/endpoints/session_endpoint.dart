import 'dart:io';

import 'package:serverpod/server.dart';
import 'package:serverpod/serverpod.dart';
import 'package:sneaker_server/server.dart';
import 'package:sneaker_server/src/generated/brand.dart';
import 'package:sneaker_server/src/generated/protocol.dart';

class SessionEndPoint extends Endpoint {
  Future<void> saveComment(Session session, int brandId, String? text) async {
    if (text == null) {
      return;
    }
    final auth = session.authenticationKey;
    final cacheKey = 'UserDataComment-$brandId-$auth';
    print('[CACHE_KEY] $cacheKey');
    await session.caches.local.put(
      cacheKey,
      SerializeString(string: text),
      lifetime: Duration(minutes: 30),
    );
  }

  Future<String> getComment(Session session, int brandId) async {
    final auth = session.authenticationKey;
    final cacheKey = 'UserDataComment-$brandId-$auth';

    var result = await session.caches.local.get<SerializeString>(
      cacheKey,
    );
    return result?.string ?? '';
  }
}
