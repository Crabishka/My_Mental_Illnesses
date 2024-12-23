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
import 'package:sneaker_client/src/protocol/brand.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointBrandEndPoint extends _i1.EndpointRef {
  EndpointBrandEndPoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'brandEndPoint';

  _i2.Future<void> createProduct(_i3.Brand product) =>
      caller.callServerEndpoint<void>(
        'brandEndPoint',
        'createProduct',
        {'product': product},
      );

  _i2.Future<List<_i3.Brand>> getAllProduct() =>
      caller.callServerEndpoint<List<_i3.Brand>>(
        'brandEndPoint',
        'getAllProduct',
        {},
      );

  _i2.Future<_i3.Brand?> getProductById(int id) =>
      caller.callServerEndpoint<_i3.Brand?>(
        'brandEndPoint',
        'getProductById',
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
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    brandEndPoint = EndpointBrandEndPoint(this);
    example = EndpointExample(this);
  }

  late final EndpointBrandEndPoint brandEndPoint;

  late final EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'brandEndPoint': brandEndPoint,
        'example': example,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
