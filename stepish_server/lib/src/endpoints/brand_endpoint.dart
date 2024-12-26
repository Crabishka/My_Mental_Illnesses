import 'dart:io';

import 'package:serverpod/server.dart';
import 'package:serverpod/serverpod.dart';
import 'package:sneaker_server/server.dart';
import 'package:sneaker_server/src/generated/brand.dart';

class BrandEndPoint extends Endpoint {
  Future<void> createBrand(Session session, Brand product) async {
    Brand.db.insertRow(session, product);
  }

  Future<List<Brand>> getAllBrands(Session session) async {
    final authData = (session as MethodCallSession).httpRequest.remoteIpAddress;
    final authSession = session.httpRequest.session;

    print('[AUTH_DATA] $authData');
    // print('[AUTH_SESSION] $authSession');
    print('[AUTH_SESSION] ${session.authenticationKey}');
    return Brand.db.find(session);
  }

  Future<Brand?> getBrandById(Session session, int id) async {
    return Brand.db.findById(session, id);
  }
}
