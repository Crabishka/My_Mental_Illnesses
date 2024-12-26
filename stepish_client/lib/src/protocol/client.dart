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
import 'dart:async' as _i2;
import 'package:sneaker_client/src/protocol/comment.dart' as _i3;
import 'package:sneaker_client/src/protocol/brand.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointAuthEndPoint extends _i1.EndpointRef {
  EndpointAuthEndPoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'authEndPoint';

  _i2.Future<void> createComment(_i3.Comment comment) =>
      caller.callServerEndpoint<void>(
        'authEndPoint',
        'createComment',
        {'comment': comment},
      );
}

/// {@category Endpoint}
class EndpointBrandEndPoint extends _i1.EndpointRef {
  EndpointBrandEndPoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'brandEndPoint';

  _i2.Future<void> createBrand(_i4.Brand product) =>
      caller.callServerEndpoint<void>(
        'brandEndPoint',
        'createBrand',
        {'product': product},
      );

  _i2.Future<List<_i4.Brand>> getAllBrands() =>
      caller.callServerEndpoint<List<_i4.Brand>>(
        'brandEndPoint',
        'getAllBrands',
        {},
      );

  _i2.Future<_i4.Brand?> getBrandById(int id) =>
      caller.callServerEndpoint<_i4.Brand?>(
        'brandEndPoint',
        'getBrandById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointCommentEndPoint extends _i1.EndpointRef {
  EndpointCommentEndPoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'commentEndPoint';

  _i2.Future<void> createComment(
    _i3.Comment comment,
    String? name,
    int? brandId,
  ) =>
      caller.callServerEndpoint<void>(
        'commentEndPoint',
        'createComment',
        {
          'comment': comment,
          'name': name,
          'brandId': brandId,
        },
      );

  _i2.Future<List<_i3.Comment>> getAcceptedCommentByBrand(int brandId) =>
      caller.callServerEndpoint<List<_i3.Comment>>(
        'commentEndPoint',
        'getAcceptedCommentByBrand',
        {'brandId': brandId},
      );

  _i2.Future<List<_i3.Comment>> getUnAcceptedCommentByBrand(int brandId) =>
      caller.callServerEndpoint<List<_i3.Comment>>(
        'commentEndPoint',
        'getUnAcceptedCommentByBrand',
        {'brandId': brandId},
      );

  _i2.Future<List<_i3.Comment>> getAllUnAcceptedCommentByBrand() =>
      caller.callServerEndpoint<List<_i3.Comment>>(
        'commentEndPoint',
        'getAllUnAcceptedCommentByBrand',
        {},
      );

  _i2.Future<List<_i3.Comment>> getAllCommentByBrand(int brandId) =>
      caller.callServerEndpoint<List<_i3.Comment>>(
        'commentEndPoint',
        'getAllCommentByBrand',
        {'brandId': brandId},
      );

  _i2.Future<_i3.Comment?> getCommentById(int id) =>
      caller.callServerEndpoint<_i3.Comment?>(
        'commentEndPoint',
        'getCommentById',
        {'id': id},
      );

  _i2.Future<List<_i3.Comment>> deleteCommentById(int id) =>
      caller.callServerEndpoint<List<_i3.Comment>>(
        'commentEndPoint',
        'deleteCommentById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );

  _i2.Future<String> comments() => caller.callServerEndpoint<String>(
        'example',
        'comments',
        {},
      );
}

/// {@category Endpoint}
class EndpointSessionEndPoint extends _i1.EndpointRef {
  EndpointSessionEndPoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'sessionEndPoint';

  _i2.Future<void> saveComment(
    int brandId,
    String? text,
  ) =>
      caller.callServerEndpoint<void>(
        'sessionEndPoint',
        'saveComment',
        {
          'brandId': brandId,
          'text': text,
        },
      );

  _i2.Future<String> getComment(int brandId) =>
      caller.callServerEndpoint<String>(
        'sessionEndPoint',
        'getComment',
        {'brandId': brandId},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    authEndPoint = EndpointAuthEndPoint(this);
    brandEndPoint = EndpointBrandEndPoint(this);
    commentEndPoint = EndpointCommentEndPoint(this);
    example = EndpointExample(this);
    sessionEndPoint = EndpointSessionEndPoint(this);
  }

  late final EndpointAuthEndPoint authEndPoint;

  late final EndpointBrandEndPoint brandEndPoint;

  late final EndpointCommentEndPoint commentEndPoint;

  late final EndpointExample example;

  late final EndpointSessionEndPoint sessionEndPoint;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'authEndPoint': authEndPoint,
        'brandEndPoint': brandEndPoint,
        'commentEndPoint': commentEndPoint,
        'example': example,
        'sessionEndPoint': sessionEndPoint,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
