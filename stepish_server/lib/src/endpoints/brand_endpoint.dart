import 'package:serverpod/server.dart';
import 'package:sneaker_server/src/generated/brand.dart';

class BrandEndPoint extends Endpoint {
  Future<void> createProduct(Session session, Brand product) async {
    Brand.db.insertRow(session, product);
  }

  Future<List<Brand>> getAllProduct(Session session) async {
    return Brand.db.find(session);
  }

  Future<Brand?> getProductById(Session session, int id) async {
    return Brand.db.findById(session, id);
  }
}
