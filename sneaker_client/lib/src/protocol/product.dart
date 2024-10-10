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

abstract class Product implements _i1.SerializableModel {
  Product._({
    this.id,
    required this.name,
    this.description,
    required this.price,
    this.oldPrice,
    this.pictures,
  });

  factory Product({
    int? id,
    required String name,
    String? description,
    required double price,
    double? oldPrice,
    List<String>? pictures,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      price: (jsonSerialization['price'] as num).toDouble(),
      oldPrice: (jsonSerialization['oldPrice'] as num?)?.toDouble(),
      pictures: (jsonSerialization['pictures'] as List?)
          ?.map((e) => e as String)
          .toList(),
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

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    double? oldPrice,
    List<String>? pictures,
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
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String name,
    String? description,
    required double price,
    double? oldPrice,
    List<String>? pictures,
  }) : super._(
          id: id,
          name: name,
          description: description,
          price: price,
          oldPrice: oldPrice,
          pictures: pictures,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    double? price,
    Object? oldPrice = _Undefined,
    Object? pictures = _Undefined,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      price: price ?? this.price,
      oldPrice: oldPrice is double? ? oldPrice : this.oldPrice,
      pictures: pictures is List<String>?
          ? pictures
          : this.pictures?.map((e0) => e0).toList(),
    );
  }
}
