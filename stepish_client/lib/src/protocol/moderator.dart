/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Moderator implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String login;

  String password;

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
