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
import 'manufacturer.dart' as _i2;
import 'comment.dart' as _i3;

abstract class Brand implements _i1.SerializableModel {
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
    bool? isAccepted,
  }) : isAccepted = isAccepted ?? false;

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
    bool? isAccepted,
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
      isAccepted: jsonSerialization['isAccepted'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? description;

  double price;

  double? oldPrice;

  List<String>? pictures;

  int manufacturerId;

  _i2.Manufacturer? manufacturer;

  List<_i3.Comment>? comments;

  bool isAccepted;

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
    bool? isAccepted,
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
      'isAccepted': isAccepted,
    };
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
    bool? isAccepted,
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
          isAccepted: isAccepted,
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
    bool? isAccepted,
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
      isAccepted: isAccepted ?? this.isAccepted,
    );
  }
}
