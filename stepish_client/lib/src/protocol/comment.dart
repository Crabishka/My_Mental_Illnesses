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
import 'user.dart' as _i2;
import 'brand.dart' as _i3;
import 'moderator.dart' as _i4;

abstract class Comment implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
