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
import 'brand.dart' as _i2;

abstract class Manufacturer implements _i1.TableRow, _i1.ProtocolSerialization {
  Manufacturer._({
    this.id,
    required this.name,
    this.description,
    this.pictures,
    this.brands,
  });

  factory Manufacturer({
    int? id,
    required String name,
    String? description,
    List<String>? pictures,
    List<_i2.Brand>? brands,
  }) = _ManufacturerImpl;

  factory Manufacturer.fromJson(Map<String, dynamic> jsonSerialization) {
    return Manufacturer(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      pictures: (jsonSerialization['pictures'] as List?)
          ?.map((e) => e as String)
          .toList(),
      brands: (jsonSerialization['brands'] as List?)
          ?.map((e) => _i2.Brand.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = ManufacturerTable();

  static const db = ManufacturerRepository._();

  @override
  int? id;

  String name;

  String? description;

  List<String>? pictures;

  List<_i2.Brand>? brands;

  @override
  _i1.Table get table => t;

  Manufacturer copyWith({
    int? id,
    String? name,
    String? description,
    List<String>? pictures,
    List<_i2.Brand>? brands,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      if (pictures != null) 'pictures': pictures?.toJson(),
      if (brands != null)
        'brands': brands?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      if (pictures != null) 'pictures': pictures?.toJson(),
      if (brands != null)
        'brands': brands?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ManufacturerInclude include({_i2.BrandIncludeList? brands}) {
    return ManufacturerInclude._(brands: brands);
  }

  static ManufacturerIncludeList includeList({
    _i1.WhereExpressionBuilder<ManufacturerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ManufacturerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ManufacturerTable>? orderByList,
    ManufacturerInclude? include,
  }) {
    return ManufacturerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Manufacturer.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Manufacturer.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ManufacturerImpl extends Manufacturer {
  _ManufacturerImpl({
    int? id,
    required String name,
    String? description,
    List<String>? pictures,
    List<_i2.Brand>? brands,
  }) : super._(
          id: id,
          name: name,
          description: description,
          pictures: pictures,
          brands: brands,
        );

  @override
  Manufacturer copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    Object? pictures = _Undefined,
    Object? brands = _Undefined,
  }) {
    return Manufacturer(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      pictures: pictures is List<String>?
          ? pictures
          : this.pictures?.map((e0) => e0).toList(),
      brands: brands is List<_i2.Brand>?
          ? brands
          : this.brands?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class ManufacturerTable extends _i1.Table {
  ManufacturerTable({super.tableRelation}) : super(tableName: 'manufacturer') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    pictures = _i1.ColumnSerializable(
      'pictures',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable pictures;

  _i2.BrandTable? ___brands;

  _i1.ManyRelation<_i2.BrandTable>? _brands;

  _i2.BrandTable get __brands {
    if (___brands != null) return ___brands!;
    ___brands = _i1.createRelationTable(
      relationFieldName: '__brands',
      field: Manufacturer.t.id,
      foreignField: _i2.Brand.t.manufacturerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BrandTable(tableRelation: foreignTableRelation),
    );
    return ___brands!;
  }

  _i1.ManyRelation<_i2.BrandTable> get brands {
    if (_brands != null) return _brands!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'brands',
      field: Manufacturer.t.id,
      foreignField: _i2.Brand.t.manufacturerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BrandTable(tableRelation: foreignTableRelation),
    );
    _brands = _i1.ManyRelation<_i2.BrandTable>(
      tableWithRelations: relationTable,
      table: _i2.BrandTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _brands!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        pictures,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'brands') {
      return __brands;
    }
    return null;
  }
}

class ManufacturerInclude extends _i1.IncludeObject {
  ManufacturerInclude._({_i2.BrandIncludeList? brands}) {
    _brands = brands;
  }

  _i2.BrandIncludeList? _brands;

  @override
  Map<String, _i1.Include?> get includes => {'brands': _brands};

  @override
  _i1.Table get table => Manufacturer.t;
}

class ManufacturerIncludeList extends _i1.IncludeList {
  ManufacturerIncludeList._({
    _i1.WhereExpressionBuilder<ManufacturerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Manufacturer.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Manufacturer.t;
}

class ManufacturerRepository {
  const ManufacturerRepository._();

  final attach = const ManufacturerAttachRepository._();

  final attachRow = const ManufacturerAttachRowRepository._();

  Future<List<Manufacturer>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ManufacturerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ManufacturerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ManufacturerTable>? orderByList,
    _i1.Transaction? transaction,
    ManufacturerInclude? include,
  }) async {
    return session.db.find<Manufacturer>(
      where: where?.call(Manufacturer.t),
      orderBy: orderBy?.call(Manufacturer.t),
      orderByList: orderByList?.call(Manufacturer.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Manufacturer?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ManufacturerTable>? where,
    int? offset,
    _i1.OrderByBuilder<ManufacturerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ManufacturerTable>? orderByList,
    _i1.Transaction? transaction,
    ManufacturerInclude? include,
  }) async {
    return session.db.findFirstRow<Manufacturer>(
      where: where?.call(Manufacturer.t),
      orderBy: orderBy?.call(Manufacturer.t),
      orderByList: orderByList?.call(Manufacturer.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Manufacturer?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ManufacturerInclude? include,
  }) async {
    return session.db.findById<Manufacturer>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Manufacturer>> insert(
    _i1.Session session,
    List<Manufacturer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Manufacturer>(
      rows,
      transaction: transaction,
    );
  }

  Future<Manufacturer> insertRow(
    _i1.Session session,
    Manufacturer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Manufacturer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Manufacturer>> update(
    _i1.Session session,
    List<Manufacturer> rows, {
    _i1.ColumnSelections<ManufacturerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Manufacturer>(
      rows,
      columns: columns?.call(Manufacturer.t),
      transaction: transaction,
    );
  }

  Future<Manufacturer> updateRow(
    _i1.Session session,
    Manufacturer row, {
    _i1.ColumnSelections<ManufacturerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Manufacturer>(
      row,
      columns: columns?.call(Manufacturer.t),
      transaction: transaction,
    );
  }

  Future<List<Manufacturer>> delete(
    _i1.Session session,
    List<Manufacturer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Manufacturer>(
      rows,
      transaction: transaction,
    );
  }

  Future<Manufacturer> deleteRow(
    _i1.Session session,
    Manufacturer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Manufacturer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Manufacturer>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ManufacturerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Manufacturer>(
      where: where(Manufacturer.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ManufacturerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Manufacturer>(
      where: where?.call(Manufacturer.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ManufacturerAttachRepository {
  const ManufacturerAttachRepository._();

  Future<void> brands(
    _i1.Session session,
    Manufacturer manufacturer,
    List<_i2.Brand> brand, {
    _i1.Transaction? transaction,
  }) async {
    if (brand.any((e) => e.id == null)) {
      throw ArgumentError.notNull('brand.id');
    }
    if (manufacturer.id == null) {
      throw ArgumentError.notNull('manufacturer.id');
    }

    var $brand =
        brand.map((e) => e.copyWith(manufacturerId: manufacturer.id)).toList();
    await session.db.update<_i2.Brand>(
      $brand,
      columns: [_i2.Brand.t.manufacturerId],
      transaction: transaction,
    );
  }
}

class ManufacturerAttachRowRepository {
  const ManufacturerAttachRowRepository._();

  Future<void> brands(
    _i1.Session session,
    Manufacturer manufacturer,
    _i2.Brand brand, {
    _i1.Transaction? transaction,
  }) async {
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }
    if (manufacturer.id == null) {
      throw ArgumentError.notNull('manufacturer.id');
    }

    var $brand = brand.copyWith(manufacturerId: manufacturer.id);
    await session.db.updateRow<_i2.Brand>(
      $brand,
      columns: [_i2.Brand.t.manufacturerId],
      transaction: transaction,
    );
  }
}
