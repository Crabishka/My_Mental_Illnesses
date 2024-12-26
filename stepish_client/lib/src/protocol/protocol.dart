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
import 'brand.dart' as _i2;
import 'comment.dart' as _i3;
import 'exception/comment_create_exception.dart' as _i4;
import 'manufacturer.dart' as _i5;
import 'moderator.dart' as _i6;
import 'serialize_string.dart' as _i7;
import 'token.dart' as _i8;
import 'user.dart' as _i9;
import 'package:sneaker_client/src/protocol/brand.dart' as _i10;
import 'package:sneaker_client/src/protocol/comment.dart' as _i11;
export 'brand.dart';
export 'comment.dart';
export 'exception/comment_create_exception.dart';
export 'manufacturer.dart';
export 'moderator.dart';
export 'serialize_string.dart';
export 'token.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Brand) {
      return _i2.Brand.fromJson(data) as T;
    }
    if (t == _i3.Comment) {
      return _i3.Comment.fromJson(data) as T;
    }
    if (t == _i4.CommentCreateException) {
      return _i4.CommentCreateException.fromJson(data) as T;
    }
    if (t == _i5.Manufacturer) {
      return _i5.Manufacturer.fromJson(data) as T;
    }
    if (t == _i6.Moderator) {
      return _i6.Moderator.fromJson(data) as T;
    }
    if (t == _i7.SerializeString) {
      return _i7.SerializeString.fromJson(data) as T;
    }
    if (t == _i8.JwtToken) {
      return _i8.JwtToken.fromJson(data) as T;
    }
    if (t == _i9.User) {
      return _i9.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Brand?>()) {
      return (data != null ? _i2.Brand.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Comment?>()) {
      return (data != null ? _i3.Comment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CommentCreateException?>()) {
      return (data != null ? _i4.CommentCreateException.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Manufacturer?>()) {
      return (data != null ? _i5.Manufacturer.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Moderator?>()) {
      return (data != null ? _i6.Moderator.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.SerializeString?>()) {
      return (data != null ? _i7.SerializeString.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.JwtToken?>()) {
      return (data != null ? _i8.JwtToken.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.User?>()) {
      return (data != null ? _i9.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i3.Comment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Comment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i2.Brand>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i2.Brand>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i3.Comment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Comment>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i10.Brand>) {
      return (data as List).map((e) => deserialize<_i10.Brand>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.Comment>) {
      return (data as List).map((e) => deserialize<_i11.Comment>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Brand) {
      return 'Brand';
    }
    if (data is _i3.Comment) {
      return 'Comment';
    }
    if (data is _i4.CommentCreateException) {
      return 'CommentCreateException';
    }
    if (data is _i5.Manufacturer) {
      return 'Manufacturer';
    }
    if (data is _i6.Moderator) {
      return 'Moderator';
    }
    if (data is _i7.SerializeString) {
      return 'SerializeString';
    }
    if (data is _i8.JwtToken) {
      return 'JwtToken';
    }
    if (data is _i9.User) {
      return 'User';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Brand') {
      return deserialize<_i2.Brand>(data['data']);
    }
    if (dataClassName == 'Comment') {
      return deserialize<_i3.Comment>(data['data']);
    }
    if (dataClassName == 'CommentCreateException') {
      return deserialize<_i4.CommentCreateException>(data['data']);
    }
    if (dataClassName == 'Manufacturer') {
      return deserialize<_i5.Manufacturer>(data['data']);
    }
    if (dataClassName == 'Moderator') {
      return deserialize<_i6.Moderator>(data['data']);
    }
    if (dataClassName == 'SerializeString') {
      return deserialize<_i7.SerializeString>(data['data']);
    }
    if (dataClassName == 'JwtToken') {
      return deserialize<_i8.JwtToken>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i9.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
