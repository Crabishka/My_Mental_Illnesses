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
import 'user.dart' as _i2;
import 'brand.dart' as _i3;
import 'moderator.dart' as _i4;

abstract class Comment implements _i1.TableRow, _i1.ProtocolSerialization {
  Comment._({
    this.id,
    required this.name,
    required this.userId,
    this.user,
    required this.brandId,
    this.brand,
    required this.accepted_byId,
    this.accepted_by,
    this.description,
    required this.rating,
    this.pictures,
    bool? is_accepted,
  }) : is_accepted = is_accepted ?? false;

  factory Comment({
    int? id,
    required String name,
    required int userId,
    _i2.User? user,
    required int brandId,
    _i3.Brand? brand,
    required int accepted_byId,
    _i4.Moderator? accepted_by,
    String? description,
    required double rating,
    List<String>? pictures,
    bool? is_accepted,
  }) = _CommentImpl;

  factory Comment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Comment(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      brandId: jsonSerialization['brandId'] as int,
      brand: jsonSerialization['brand'] == null
          ? null
          : _i3.Brand.fromJson(
              (jsonSerialization['brand'] as Map<String, dynamic>)),
      accepted_byId: jsonSerialization['accepted_byId'] as int,
      accepted_by: jsonSerialization['accepted_by'] == null
          ? null
          : _i4.Moderator.fromJson(
              (jsonSerialization['accepted_by'] as Map<String, dynamic>)),
      description: jsonSerialization['description'] as String?,
      rating: (jsonSerialization['rating'] as num).toDouble(),
      pictures: (jsonSerialization['pictures'] as List?)
          ?.map((e) => e as String)
          .toList(),
      is_accepted: jsonSerialization['is_accepted'] as bool,
    );
  }

  static final t = CommentTable();

  static const db = CommentRepository._();

  @override
  int? id;

  String name;

  int userId;

  _i2.User? user;

  int brandId;

  _i3.Brand? brand;

  int accepted_byId;

  _i4.Moderator? accepted_by;

  String? description;

  double rating;

  List<String>? pictures;

  bool is_accepted;

  @override
  _i1.Table get table => t;

  Comment copyWith({
    int? id,
    String? name,
    int? userId,
    _i2.User? user,
    int? brandId,
    _i3.Brand? brand,
    int? accepted_byId,
    _i4.Moderator? accepted_by,
    String? description,
    double? rating,
    List<String>? pictures,
    bool? is_accepted,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'brandId': brandId,
      if (brand != null) 'brand': brand?.toJson(),
      'accepted_byId': accepted_byId,
      if (accepted_by != null) 'accepted_by': accepted_by?.toJson(),
      if (description != null) 'description': description,
      'rating': rating,
      if (pictures != null) 'pictures': pictures?.toJson(),
      'is_accepted': is_accepted,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'brandId': brandId,
      if (brand != null) 'brand': brand?.toJsonForProtocol(),
      'accepted_byId': accepted_byId,
      if (accepted_by != null) 'accepted_by': accepted_by?.toJsonForProtocol(),
      if (description != null) 'description': description,
      'rating': rating,
      if (pictures != null) 'pictures': pictures?.toJson(),
      'is_accepted': is_accepted,
    };
  }

  static CommentInclude include({
    _i2.UserInclude? user,
    _i3.BrandInclude? brand,
    _i4.ModeratorInclude? accepted_by,
  }) {
    return CommentInclude._(
      user: user,
      brand: brand,
      accepted_by: accepted_by,
    );
  }

  static CommentIncludeList includeList({
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    CommentInclude? include,
  }) {
    return CommentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Comment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Comment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CommentImpl extends Comment {
  _CommentImpl({
    int? id,
    required String name,
    required int userId,
    _i2.User? user,
    required int brandId,
    _i3.Brand? brand,
    required int accepted_byId,
    _i4.Moderator? accepted_by,
    String? description,
    required double rating,
    List<String>? pictures,
    bool? is_accepted,
  }) : super._(
          id: id,
          name: name,
          userId: userId,
          user: user,
          brandId: brandId,
          brand: brand,
          accepted_byId: accepted_byId,
          accepted_by: accepted_by,
          description: description,
          rating: rating,
          pictures: pictures,
          is_accepted: is_accepted,
        );

  @override
  Comment copyWith({
    Object? id = _Undefined,
    String? name,
    int? userId,
    Object? user = _Undefined,
    int? brandId,
    Object? brand = _Undefined,
    int? accepted_byId,
    Object? accepted_by = _Undefined,
    Object? description = _Undefined,
    double? rating,
    Object? pictures = _Undefined,
    bool? is_accepted,
  }) {
    return Comment(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      brandId: brandId ?? this.brandId,
      brand: brand is _i3.Brand? ? brand : this.brand?.copyWith(),
      accepted_byId: accepted_byId ?? this.accepted_byId,
      accepted_by: accepted_by is _i4.Moderator?
          ? accepted_by
          : this.accepted_by?.copyWith(),
      description: description is String? ? description : this.description,
      rating: rating ?? this.rating,
      pictures: pictures is List<String>?
          ? pictures
          : this.pictures?.map((e0) => e0).toList(),
      is_accepted: is_accepted ?? this.is_accepted,
    );
  }
}

class CommentTable extends _i1.Table {
  CommentTable({super.tableRelation}) : super(tableName: 'comment') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    brandId = _i1.ColumnInt(
      'brandId',
      this,
    );
    accepted_byId = _i1.ColumnInt(
      'accepted_byId',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    rating = _i1.ColumnDouble(
      'rating',
      this,
    );
    pictures = _i1.ColumnSerializable(
      'pictures',
      this,
    );
    is_accepted = _i1.ColumnBool(
      'is_accepted',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt brandId;

  _i3.BrandTable? _brand;

  late final _i1.ColumnInt accepted_byId;

  _i4.ModeratorTable? _accepted_by;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble rating;

  late final _i1.ColumnSerializable pictures;

  late final _i1.ColumnBool is_accepted;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Comment.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.BrandTable get brand {
    if (_brand != null) return _brand!;
    _brand = _i1.createRelationTable(
      relationFieldName: 'brand',
      field: Comment.t.brandId,
      foreignField: _i3.Brand.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.BrandTable(tableRelation: foreignTableRelation),
    );
    return _brand!;
  }

  _i4.ModeratorTable get accepted_by {
    if (_accepted_by != null) return _accepted_by!;
    _accepted_by = _i1.createRelationTable(
      relationFieldName: 'accepted_by',
      field: Comment.t.accepted_byId,
      foreignField: _i4.Moderator.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ModeratorTable(tableRelation: foreignTableRelation),
    );
    return _accepted_by!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        userId,
        brandId,
        accepted_byId,
        description,
        rating,
        pictures,
        is_accepted,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'brand') {
      return brand;
    }
    if (relationField == 'accepted_by') {
      return accepted_by;
    }
    return null;
  }
}

class CommentInclude extends _i1.IncludeObject {
  CommentInclude._({
    _i2.UserInclude? user,
    _i3.BrandInclude? brand,
    _i4.ModeratorInclude? accepted_by,
  }) {
    _user = user;
    _brand = brand;
    _accepted_by = accepted_by;
  }

  _i2.UserInclude? _user;

  _i3.BrandInclude? _brand;

  _i4.ModeratorInclude? _accepted_by;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'brand': _brand,
        'accepted_by': _accepted_by,
      };

  @override
  _i1.Table get table => Comment.t;
}

class CommentIncludeList extends _i1.IncludeList {
  CommentIncludeList._({
    _i1.WhereExpressionBuilder<CommentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Comment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Comment.t;
}

class CommentRepository {
  const CommentRepository._();

  final attachRow = const CommentAttachRowRepository._();

  Future<List<Comment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    _i1.Transaction? transaction,
    CommentInclude? include,
  }) async {
    return session.db.find<Comment>(
      where: where?.call(Comment.t),
      orderBy: orderBy?.call(Comment.t),
      orderByList: orderByList?.call(Comment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Comment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    _i1.Transaction? transaction,
    CommentInclude? include,
  }) async {
    return session.db.findFirstRow<Comment>(
      where: where?.call(Comment.t),
      orderBy: orderBy?.call(Comment.t),
      orderByList: orderByList?.call(Comment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Comment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CommentInclude? include,
  }) async {
    return session.db.findById<Comment>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Comment>> insert(
    _i1.Session session,
    List<Comment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Comment>(
      rows,
      transaction: transaction,
    );
  }

  Future<Comment> insertRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Comment>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Comment>> update(
    _i1.Session session,
    List<Comment> rows, {
    _i1.ColumnSelections<CommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Comment>(
      rows,
      columns: columns?.call(Comment.t),
      transaction: transaction,
    );
  }

  Future<Comment> updateRow(
    _i1.Session session,
    Comment row, {
    _i1.ColumnSelections<CommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Comment>(
      row,
      columns: columns?.call(Comment.t),
      transaction: transaction,
    );
  }

  Future<List<Comment>> delete(
    _i1.Session session,
    List<Comment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Comment>(
      rows,
      transaction: transaction,
    );
  }

  Future<Comment> deleteRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Comment>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Comment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CommentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Comment>(
      where: where(Comment.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Comment>(
      where: where?.call(Comment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class CommentAttachRowRepository {
  const CommentAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Comment comment,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $comment = comment.copyWith(userId: user.id);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.userId],
      transaction: transaction,
    );
  }

  Future<void> brand(
    _i1.Session session,
    Comment comment,
    _i3.Brand brand, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }

    var $comment = comment.copyWith(brandId: brand.id);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.brandId],
      transaction: transaction,
    );
  }

  Future<void> accepted_by(
    _i1.Session session,
    Comment comment,
    _i4.Moderator accepted_by, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (accepted_by.id == null) {
      throw ArgumentError.notNull('accepted_by.id');
    }

    var $comment = comment.copyWith(accepted_byId: accepted_by.id);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.accepted_byId],
      transaction: transaction,
    );
  }
}
