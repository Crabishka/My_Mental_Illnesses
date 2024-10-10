/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Product implements _i1.TableRow, _i1.ProtocolSerialization {
  Product._({
    this.id,
    required this.name,
    this.description,
    required this.price,
    this.oldPrice,
    this.pictures,
  });

  factory Product({
    int? id,
    required String name,
    String? description,
    required double price,
    double? oldPrice,
    List<String>? pictures,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      price: (jsonSerialization['price'] as num).toDouble(),
      oldPrice: (jsonSerialization['oldPrice'] as num?)?.toDouble(),
      pictures: (jsonSerialization['pictures'] as List?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  static final t = ProductTable();

  static const db = ProductRepository._();

  @override
  int? id;

  String name;

  String? description;

  double price;

  double? oldPrice;

  List<String>? pictures;

  @override
  _i1.Table get table => t;

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    double? oldPrice,
    List<String>? pictures,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      'price': price,
      if (oldPrice != null) 'oldPrice': oldPrice,
      if (pictures != null) 'pictures': pictures?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      'price': price,
      if (oldPrice != null) 'oldPrice': oldPrice,
      if (pictures != null) 'pictures': pictures?.toJson(),
    };
  }

  static ProductInclude include() {
    return ProductInclude._();
  }

  static ProductIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    ProductInclude? include,
  }) {
    return ProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Product.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String name,
    String? description,
    required double price,
    double? oldPrice,
    List<String>? pictures,
  }) : super._(
          id: id,
          name: name,
          description: description,
          price: price,
          oldPrice: oldPrice,
          pictures: pictures,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    double? price,
    Object? oldPrice = _Undefined,
    Object? pictures = _Undefined,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      price: price ?? this.price,
      oldPrice: oldPrice is double? ? oldPrice : this.oldPrice,
      pictures: pictures is List<String>?
          ? pictures
          : this.pictures?.map((e0) => e0).toList(),
    );
  }
}

class ProductTable extends _i1.Table {
  ProductTable({super.tableRelation}) : super(tableName: 'product') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    oldPrice = _i1.ColumnDouble(
      'oldPrice',
      this,
    );
    pictures = _i1.ColumnSerializable(
      'pictures',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble price;

  late final _i1.ColumnDouble oldPrice;

  late final _i1.ColumnSerializable pictures;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        price,
        oldPrice,
        pictures,
      ];
}

class ProductInclude extends _i1.IncludeObject {
  ProductInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Product.t;
}

class ProductIncludeList extends _i1.IncludeList {
  ProductIncludeList._({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Product.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Product.t;
}

class ProductRepository {
  const ProductRepository._();

  Future<List<Product>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Product>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Product>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Product>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Product> rows, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Product>(
      rows,
      columns: columns?.call(Product.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Product row, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Product>(
      row,
      columns: columns?.call(Product.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Product>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Product>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Product>(
      where: where(Product.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Product>(
      where: where?.call(Product.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
