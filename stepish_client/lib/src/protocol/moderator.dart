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
import 'comment.dart' as _i2;

abstract class Moderator implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String login;

  String password;

  List<_i2.Comment>? accepted_comments;

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
