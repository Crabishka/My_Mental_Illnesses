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
import 'comment.dart' as _i2;

abstract class Moderator implements _i1.TableRow, _i1.ProtocolSerialization {
  Moderator._({
    this.id,
    required this.name,
    required this.login,
    required this.password,
    this.accepted_comments,
  });

  factory Moderator({
    int? id,
    required String name,
    required String login,
    required String password,
    List<_i2.Comment>? accepted_comments,
  }) = _ModeratorImpl;

  factory Moderator.fromJson(Map<String, dynamic> jsonSerialization) {
    return Moderator(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      login: jsonSerialization['login'] as String,
      password: jsonSerialization['password'] as String,
      accepted_comments: (jsonSerialization['accepted_comments'] as List?)
          ?.map((e) => _i2.Comment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = ModeratorTable();

  static const db = ModeratorRepository._();

  @override
  int? id;

  String name;

  String login;

  String password;

  List<_i2.Comment>? accepted_comments;

  @override
  _i1.Table get table => t;

  Moderator copyWith({
    int? id,
    String? name,
    String? login,
    String? password,
    List<_i2.Comment>? accepted_comments,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'login': login,
      'password': password,
      if (accepted_comments != null)
        'accepted_comments':
            accepted_comments?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'login': login,
      'password': password,
      if (accepted_comments != null)
        'accepted_comments': accepted_comments?.toJson(
            valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ModeratorInclude include({_i2.CommentIncludeList? accepted_comments}) {
    return ModeratorInclude._(accepted_comments: accepted_comments);
  }

  static ModeratorIncludeList includeList({
    _i1.WhereExpressionBuilder<ModeratorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ModeratorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ModeratorTable>? orderByList,
    ModeratorInclude? include,
  }) {
    return ModeratorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Moderator.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Moderator.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ModeratorImpl extends Moderator {
  _ModeratorImpl({
    int? id,
    required String name,
    required String login,
    required String password,
    List<_i2.Comment>? accepted_comments,
  }) : super._(
          id: id,
          name: name,
          login: login,
          password: password,
          accepted_comments: accepted_comments,
        );

  @override
  Moderator copyWith({
    Object? id = _Undefined,
    String? name,
    String? login,
    String? password,
    Object? accepted_comments = _Undefined,
  }) {
    return Moderator(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      login: login ?? this.login,
      password: password ?? this.password,
      accepted_comments: accepted_comments is List<_i2.Comment>?
          ? accepted_comments
          : this.accepted_comments?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class ModeratorTable extends _i1.Table {
  ModeratorTable({super.tableRelation}) : super(tableName: 'moderator') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    login = _i1.ColumnString(
      'login',
      this,
    );
    password = _i1.ColumnString(
      'password',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString login;

  late final _i1.ColumnString password;

  _i2.CommentTable? ___accepted_comments;

  _i1.ManyRelation<_i2.CommentTable>? _accepted_comments;

  _i2.CommentTable get __accepted_comments {
    if (___accepted_comments != null) return ___accepted_comments!;
    ___accepted_comments = _i1.createRelationTable(
      relationFieldName: '__accepted_comments',
      field: Moderator.t.id,
      foreignField: _i2.Comment.t.accepted_byId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    return ___accepted_comments!;
  }

  _i1.ManyRelation<_i2.CommentTable> get accepted_comments {
    if (_accepted_comments != null) return _accepted_comments!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'accepted_comments',
      field: Moderator.t.id,
      foreignField: _i2.Comment.t.accepted_byId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    _accepted_comments = _i1.ManyRelation<_i2.CommentTable>(
      tableWithRelations: relationTable,
      table: _i2.CommentTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _accepted_comments!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        login,
        password,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'accepted_comments') {
      return __accepted_comments;
    }
    return null;
  }
}

class ModeratorInclude extends _i1.IncludeObject {
  ModeratorInclude._({_i2.CommentIncludeList? accepted_comments}) {
    _accepted_comments = accepted_comments;
  }

  _i2.CommentIncludeList? _accepted_comments;

  @override
  Map<String, _i1.Include?> get includes =>
      {'accepted_comments': _accepted_comments};

  @override
  _i1.Table get table => Moderator.t;
}

class ModeratorIncludeList extends _i1.IncludeList {
  ModeratorIncludeList._({
    _i1.WhereExpressionBuilder<ModeratorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Moderator.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Moderator.t;
}

class ModeratorRepository {
  const ModeratorRepository._();

  final attach = const ModeratorAttachRepository._();

  final attachRow = const ModeratorAttachRowRepository._();

  Future<List<Moderator>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ModeratorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ModeratorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ModeratorTable>? orderByList,
    _i1.Transaction? transaction,
    ModeratorInclude? include,
  }) async {
    return session.db.find<Moderator>(
      where: where?.call(Moderator.t),
      orderBy: orderBy?.call(Moderator.t),
      orderByList: orderByList?.call(Moderator.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Moderator?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ModeratorTable>? where,
    int? offset,
    _i1.OrderByBuilder<ModeratorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ModeratorTable>? orderByList,
    _i1.Transaction? transaction,
    ModeratorInclude? include,
  }) async {
    return session.db.findFirstRow<Moderator>(
      where: where?.call(Moderator.t),
      orderBy: orderBy?.call(Moderator.t),
      orderByList: orderByList?.call(Moderator.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Moderator?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ModeratorInclude? include,
  }) async {
    return session.db.findById<Moderator>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Moderator>> insert(
    _i1.Session session,
    List<Moderator> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Moderator>(
      rows,
      transaction: transaction,
    );
  }

  Future<Moderator> insertRow(
    _i1.Session session,
    Moderator row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Moderator>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Moderator>> update(
    _i1.Session session,
    List<Moderator> rows, {
    _i1.ColumnSelections<ModeratorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Moderator>(
      rows,
      columns: columns?.call(Moderator.t),
      transaction: transaction,
    );
  }

  Future<Moderator> updateRow(
    _i1.Session session,
    Moderator row, {
    _i1.ColumnSelections<ModeratorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Moderator>(
      row,
      columns: columns?.call(Moderator.t),
      transaction: transaction,
    );
  }

  Future<List<Moderator>> delete(
    _i1.Session session,
    List<Moderator> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Moderator>(
      rows,
      transaction: transaction,
    );
  }

  Future<Moderator> deleteRow(
    _i1.Session session,
    Moderator row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Moderator>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Moderator>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ModeratorTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Moderator>(
      where: where(Moderator.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ModeratorTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Moderator>(
      where: where?.call(Moderator.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ModeratorAttachRepository {
  const ModeratorAttachRepository._();

  Future<void> accepted_comments(
    _i1.Session session,
    Moderator moderator,
    List<_i2.Comment> comment, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('comment.id');
    }
    if (moderator.id == null) {
      throw ArgumentError.notNull('moderator.id');
    }

    var $comment =
        comment.map((e) => e.copyWith(accepted_byId: moderator.id)).toList();
    await session.db.update<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.accepted_byId],
      transaction: transaction,
    );
  }
}

class ModeratorAttachRowRepository {
  const ModeratorAttachRowRepository._();

  Future<void> accepted_comments(
    _i1.Session session,
    Moderator moderator,
    _i2.Comment comment, {
    _i1.Transaction? transaction,
  }) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (moderator.id == null) {
      throw ArgumentError.notNull('moderator.id');
    }

    var $comment = comment.copyWith(accepted_byId: moderator.id);
    await session.db.updateRow<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.accepted_byId],
      transaction: transaction,
    );
  }
}
