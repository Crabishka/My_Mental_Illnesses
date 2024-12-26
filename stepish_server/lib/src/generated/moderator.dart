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

abstract class Moderator implements _i1.TableRow, _i1.ProtocolSerialization {
  Moderator._({
    this.id,
    required this.name,
    required this.login,
    required this.password,
  });

  factory Moderator({
    int? id,
    required String name,
    required String login,
    required String password,
  }) = _ModeratorImpl;

  factory Moderator.fromJson(Map<String, dynamic> jsonSerialization) {
    return Moderator(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      login: jsonSerialization['login'] as String,
      password: jsonSerialization['password'] as String,
    );
  }

  static final t = ModeratorTable();

  static const db = ModeratorRepository._();

  @override
  int? id;

  String name;

  String login;

  String password;

  @override
  _i1.Table get table => t;

  Moderator copyWith({
    int? id,
    String? name,
    String? login,
    String? password,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'login': login,
      'password': password,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'login': login,
      'password': password,
    };
  }

  static ModeratorInclude include() {
    return ModeratorInclude._();
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
  }) : super._(
          id: id,
          name: name,
          login: login,
          password: password,
        );

  @override
  Moderator copyWith({
    Object? id = _Undefined,
    String? name,
    String? login,
    String? password,
  }) {
    return Moderator(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      login: login ?? this.login,
      password: password ?? this.password,
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

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        login,
        password,
      ];
}

class ModeratorInclude extends _i1.IncludeObject {
  ModeratorInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

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

  Future<List<Moderator>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ModeratorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ModeratorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ModeratorTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Moderator>(
      where: where?.call(Moderator.t),
      orderBy: orderBy?.call(Moderator.t),
      orderByList: orderByList?.call(Moderator.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
  }) async {
    return session.db.findFirstRow<Moderator>(
      where: where?.call(Moderator.t),
      orderBy: orderBy?.call(Moderator.t),
      orderByList: orderByList?.call(Moderator.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Moderator?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Moderator>(
      id,
      transaction: transaction,
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
