import 'package:serverpod/server.dart';
import 'package:sneaker_server/src/generated/product.dart';

class ProductEndPoint extends Endpoint {
  Future<void> createProduct(Session session, Product product) async {
    Product.db.insertRow(session, product);
  }

  Future<List<Product>> getAllProduct(Session session) async {
    return Product.db.find(session);
  }

  Future<Product?> getProductById(Session session, int id) async {
    return Product.db.findById(session, id);
  }
}
