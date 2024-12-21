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
import 'manufacturer.dart' as _i2;
import 'comment.dart' as _i3;

abstract class Brand implements _i1.TableRow, _i1.ProtocolSerialization {
  Brand._({
    this.id,
    required this.name,
    this.description,
    required this.price,
    this.oldPrice,
    this.pictures,
    required this.manufacturerId,
    this.manufacturer,
    this.comments,
    bool? is_accepted,
  }) : is_accepted = is_accepted ?? false;

  factory Brand({
    int? id,
    required String name,
    String? description,
    required double price,
    double? oldPrice,
    List<String>? pictures,
    required int manufacturerId,
    _i2.Manufacturer? manufacturer,
    List<_i3.Comment>? comments,
    bool? is_accepted,
  }) = _BrandImpl;

  factory Brand.fromJson(Map<String, dynamic> jsonSerialization) {
    return Brand(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      price: (jsonSerialization['price'] as num).toDouble(),
      oldPrice: (jsonSerialization['oldPrice'] as num?)?.toDouble(),
      pictures: (jsonSerialization['pictures'] as List?)
          ?.map((e) => e as String)
          .toList(),
      manufacturerId: jsonSerialization['manufacturerId'] as int,
      manufacturer: jsonSerialization['manufacturer'] == null
          ? null
          : _i2.Manufacturer.fromJson(
              (jsonSerialization['manufacturer'] as Map<String, dynamic>)),
      comments: (jsonSerialization['comments'] as List?)
          ?.map((e) => _i3.Comment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      is_accepted: jsonSerialization['is_accepted'] as bool,
    );
  }

  static final t = BrandTable();

  static const db = BrandRepository._();

  @override
  int? id;

  String name;

  String? description;

  double price;

  double? oldPrice;

  List<String>? pictures;

  int manufacturerId;

  _i2.Manufacturer? manufacturer;

  List<_i3.Comment>? comments;

  bool is_accepted;

  @override
  _i1.Table get table => t;

  Brand copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    double? oldPrice,
    List<String>? pictures,
    int? manufacturerId,
    _i2.Manufacturer? manufacturer,
    List<_i3.Comment>? comments,
    bool? is_accepted,
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
      'manufacturerId': manufacturerId,
      if (manufacturer != null) 'manufacturer': manufacturer?.toJson(),
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJson()),
      'is_accepted': is_accepted,
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
      'manufacturerId': manufacturerId,
      if (manufacturer != null)
        'manufacturer': manufacturer?.toJsonForProtocol(),
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'is_accepted': is_accepted,
    };
  }

  static BrandInclude include({
    _i2.ManufacturerInclude? manufacturer,
    _i3.CommentIncludeList? comments,
  }) {
    return BrandInclude._(
      manufacturer: manufacturer,
      comments: comments,
    );
  }

  static BrandIncludeList includeList({
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandTable>? orderByList,
    BrandInclude? include,
  }) {
    return BrandIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Brand.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Brand.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BrandImpl extends Brand {
  _BrandImpl({
    int? id,
    required String name,
    String? description,
    required double price,
    double? oldPrice,
    List<String>? pictures,
    required int manufacturerId,
    _i2.Manufacturer? manufacturer,
    List<_i3.Comment>? comments,
    bool? is_accepted,
  }) : super._(
          id: id,
          name: name,
          description: description,
          price: price,
          oldPrice: oldPrice,
          pictures: pictures,
          manufacturerId: manufacturerId,
          manufacturer: manufacturer,
          comments: comments,
          is_accepted: is_accepted,
        );

  @override
  Brand copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    double? price,
    Object? oldPrice = _Undefined,
    Object? pictures = _Undefined,
    int? manufacturerId,
    Object? manufacturer = _Undefined,
    Object? comments = _Undefined,
    bool? is_accepted,
  }) {
    return Brand(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      price: price ?? this.price,
      oldPrice: oldPrice is double? ? oldPrice : this.oldPrice,
      pictures: pictures is List<String>?
          ? pictures
          : this.pictures?.map((e0) => e0).toList(),
      manufacturerId: manufacturerId ?? this.manufacturerId,
      manufacturer: manufacturer is _i2.Manufacturer?
          ? manufacturer
          : this.manufacturer?.copyWith(),
      comments: comments is List<_i3.Comment>?
          ? comments
          : this.comments?.map((e0) => e0.copyWith()).toList(),
      is_accepted: is_accepted ?? this.is_accepted,
    );
  }
}

class BrandTable extends _i1.Table {
  BrandTable({super.tableRelation}) : super(tableName: 'brand') {
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
    manufacturerId = _i1.ColumnInt(
      'manufacturerId',
      this,
    );
    is_accepted = _i1.ColumnBool(
      'is_accepted',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble price;

  late final _i1.ColumnDouble oldPrice;

  late final _i1.ColumnSerializable pictures;

  late final _i1.ColumnInt manufacturerId;

  _i2.ManufacturerTable? _manufacturer;

  _i3.CommentTable? ___comments;

  _i1.ManyRelation<_i3.CommentTable>? _comments;

  late final _i1.ColumnBool is_accepted;

  _i2.ManufacturerTable get manufacturer {
    if (_manufacturer != null) return _manufacturer!;
    _manufacturer = _i1.createRelationTable(
      relationFieldName: 'manufacturer',
      field: Brand.t.manufacturerId,
      foreignField: _i2.Manufacturer.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ManufacturerTable(tableRelation: foreignTableRelation),
    );
    return _manufacturer!;
  }

  _i3.CommentTable get __comments {
    if (___comments != null) return ___comments!;
    ___comments = _i1.createRelationTable(
      relationFieldName: '__comments',
      field: Brand.t.id,
      foreignField: _i3.Comment.t.brandId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.CommentTable(tableRelation: foreignTableRelation),
    );
    return ___comments!;
  }

  _i1.ManyRelation<_i3.CommentTable> get comments {
    if (_comments != null) return _comments!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'comments',
      field: Brand.t.id,
      foreignField: _i3.Comment.t.brandId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.CommentTable(tableRelation: foreignTableRelation),
    );
    _comments = _i1.ManyRelation<_i3.CommentTable>(
      tableWithRelations: relationTable,
      table: _i3.CommentTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _comments!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        price,
        oldPrice,
        pictures,
        manufacturerId,
        is_accepted,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'manufacturer') {
      return manufacturer;
    }
    if (relationField == 'comments') {
      return __comments;
    }
    return null;
  }
}

class BrandInclude extends _i1.IncludeObject {
  BrandInclude._({
    _i2.ManufacturerInclude? manufacturer,
    _i3.CommentIncludeList? comments,
  }) {
    _manufacturer = manufacturer;
    _comments = comments;
  }

  _i2.ManufacturerInclude? _manufacturer;

  _i3.CommentIncludeList? _comments;

  @override
  Map<String, _i1.Include?> get includes => {
        'manufacturer': _manufacturer,
        'comments': _comments,
      };

  @override
  _i1.Table get table => Brand.t;
}

class BrandIncludeList extends _i1.IncludeList {
  BrandIncludeList._({
    _i1.WhereExpressionBuilder<BrandTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Brand.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Brand.t;
}

class BrandRepository {
  const BrandRepository._();

  final attach = const BrandAttachRepository._();

  final attachRow = const BrandAttachRowRepository._();

  final detach = const BrandDetachRepository._();

  final detachRow = const BrandDetachRowRepository._();

  Future<List<Brand>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandTable>? orderByList,
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.db.find<Brand>(
      where: where?.call(Brand.t),
      orderBy: orderBy?.call(Brand.t),
      orderByList: orderByList?.call(Brand.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Brand?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? offset,
    _i1.OrderByBuilder<BrandTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandTable>? orderByList,
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.db.findFirstRow<Brand>(
      where: where?.call(Brand.t),
      orderBy: orderBy?.call(Brand.t),
      orderByList: orderByList?.call(Brand.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Brand?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.db.findById<Brand>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Brand>> insert(
    _i1.Session session,
    List<Brand> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Brand>(
      rows,
      transaction: transaction,
    );
  }

  Future<Brand> insertRow(
    _i1.Session session,
    Brand row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Brand>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Brand>> update(
    _i1.Session session,
    List<Brand> rows, {
    _i1.ColumnSelections<BrandTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Brand>(
      rows,
      columns: columns?.call(Brand.t),
      transaction: transaction,
    );
  }

  Future<Brand> updateRow(
    _i1.Session session,
    Brand row, {
    _i1.ColumnSelections<BrandTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Brand>(
      row,
      columns: columns?.call(Brand.t),
      transaction: transaction,
    );
  }

  Future<List<Brand>> delete(
    _i1.Session session,
    List<Brand> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Brand>(
      rows,
      transaction: transaction,
    );
  }

  Future<Brand> deleteRow(
    _i1.Session session,
    Brand row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Brand>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Brand>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BrandTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Brand>(
      where: where(Brand.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Brand>(
      where: where?.call(Brand.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BrandAttachRepository {
  const BrandAttachRepository._();

  Future<void> comments(
    _i1.Session session,
    Brand brand,
    List<_i3.Comment> comment, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('comment.id');
    }
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }

    var $comment = comment.map((e) => e.copyWith(brandId: brand.id)).toList();
    await session.db.update<_i3.Comment>(
      $comment,
      columns: [_i3.Comment.t.brandId],
      transaction: transaction,
    );
  }
}

class BrandAttachRowRepository {
  const BrandAttachRowRepository._();

  Future<void> manufacturer(
    _i1.Session session,
    Brand brand,
    _i2.Manufacturer manufacturer, {
    _i1.Transaction? transaction,
  }) async {
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }
    if (manufacturer.id == null) {
      throw ArgumentError.notNull('manufacturer.id');
    }

    var $brand = brand.copyWith(manufacturerId: manufacturer.id);
    await session.db.updateRow<Brand>(
      $brand,
      columns: [Brand.t.manufacturerId],
      transaction: transaction,
    );
  }

  Future<void> comments(
    _i1.Session session,
    Brand brand,
    _i3.Comment comment, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }

    var $comment = comment.copyWith(brandId: brand.id);
    await session.db.updateRow<_i3.Comment>(
      $comment,
      columns: [_i3.Comment.t.brandId],
      transaction: transaction,
    );
  }
}

class BrandDetachRepository {
  const BrandDetachRepository._();

  Future<void> comments(
    _i1.Session session,
    List<_i3.Comment> comment, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.map((e) => e.copyWith(brandId: null)).toList();
    await session.db.update<_i3.Comment>(
      $comment,
      columns: [_i3.Comment.t.brandId],
      transaction: transaction,
    );
  }
}

class BrandDetachRowRepository {
  const BrandDetachRowRepository._();

  Future<void> comments(
    _i1.Session session,
    _i3.Comment comment, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.copyWith(brandId: null);
    await session.db.updateRow<_i3.Comment>(
      $comment,
      columns: [_i3.Comment.t.brandId],
      transaction: transaction,
    );
  }
}
