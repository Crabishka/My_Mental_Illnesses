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

abstract class Manufacturer implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? description;

  List<String>? pictures;

  List<_i2.Brand>? brands;

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
