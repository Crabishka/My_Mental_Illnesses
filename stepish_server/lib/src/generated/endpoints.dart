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
import '../endpoints/auth_endpoint.dart' as _i2;
import '../endpoints/brand_endpoint.dart' as _i3;
import '../endpoints/comment_endpoint.dart' as _i4;
import '../endpoints/example_endpoint.dart' as _i5;
import '../endpoints/session_endpoint.dart' as _i6;
import 'package:sneaker_server/src/generated/comment.dart' as _i7;
import 'package:sneaker_server/src/generated/brand.dart' as _i8;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'authEndPoint': _i2.AuthEndPoint()
        ..initialize(
          server,
          'authEndPoint',
          null,
        ),
      'brandEndPoint': _i3.BrandEndPoint()
        ..initialize(
          server,
          'brandEndPoint',
          null,
        ),
      'commentEndPoint': _i4.CommentEndPoint()
        ..initialize(
          server,
          'commentEndPoint',
          null,
        ),
      'example': _i5.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'sessionEndPoint': _i6.SessionEndPoint()
        ..initialize(
          server,
          'sessionEndPoint',
          null,
        ),
    };
    connectors['authEndPoint'] = _i1.EndpointConnector(
      name: 'authEndPoint',
      endpoint: endpoints['authEndPoint']!,
      methodConnectors: {
        'createComment': _i1.MethodConnector(
          name: 'createComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i7.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['authEndPoint'] as _i2.AuthEndPoint).createComment(
            session,
            params['comment'],
          ),
        )
      },
    );
    connectors['brandEndPoint'] = _i1.EndpointConnector(
      name: 'brandEndPoint',
      endpoint: endpoints['brandEndPoint']!,
      methodConnectors: {
        'createBrand': _i1.MethodConnector(
          name: 'createBrand',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i8.Brand>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['brandEndPoint'] as _i3.BrandEndPoint).createBrand(
            session,
            params['product'],
          ),
        ),
        'getAllBrands': _i1.MethodConnector(
          name: 'getAllBrands',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['brandEndPoint'] as _i3.BrandEndPoint)
                  .getAllBrands(session),
        ),
        'getBrandById': _i1.MethodConnector(
          name: 'getBrandById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['brandEndPoint'] as _i3.BrandEndPoint).getBrandById(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['commentEndPoint'] = _i1.EndpointConnector(
      name: 'commentEndPoint',
      endpoint: endpoints['commentEndPoint']!,
      methodConnectors: {
        'createComment': _i1.MethodConnector(
          name: 'createComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i7.Comment>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .createComment(
            session,
            params['comment'],
            params['name'],
            params['brandId'],
          ),
        ),
        'getAcceptedCommentByBrand': _i1.MethodConnector(
          name: 'getAcceptedCommentByBrand',
          params: {
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .getAcceptedCommentByBrand(
            session,
            params['brandId'],
          ),
        ),
        'getUnAcceptedCommentByBrand': _i1.MethodConnector(
          name: 'getUnAcceptedCommentByBrand',
          params: {
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .getUnAcceptedCommentByBrand(
            session,
            params['brandId'],
          ),
        ),
        'getAllUnAcceptedCommentByBrand': _i1.MethodConnector(
          name: 'getAllUnAcceptedCommentByBrand',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .getAllUnAcceptedCommentByBrand(session),
        ),
        'getAllCommentByBrand': _i1.MethodConnector(
          name: 'getAllCommentByBrand',
          params: {
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .getAllCommentByBrand(
            session,
            params['brandId'],
          ),
        ),
        'getCommentById': _i1.MethodConnector(
          name: 'getCommentById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .getCommentById(
            session,
            params['id'],
          ),
        ),
        'deleteCommentById': _i1.MethodConnector(
          name: 'deleteCommentById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['commentEndPoint'] as _i4.CommentEndPoint)
                  .deleteCommentById(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'comments': _i1.MethodConnector(
          name: 'comments',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint).comments(session),
        ),
      },
    );
    connectors['sessionEndPoint'] = _i1.EndpointConnector(
      name: 'sessionEndPoint',
      endpoint: endpoints['sessionEndPoint']!,
      methodConnectors: {
        'saveComment': _i1.MethodConnector(
          name: 'saveComment',
          params: {
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'text': _i1.ParameterDescription(
              name: 'text',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sessionEndPoint'] as _i6.SessionEndPoint).saveComment(
            session,
            params['brandId'],
            params['text'],
          ),
        ),
        'getComment': _i1.MethodConnector(
          name: 'getComment',
          params: {
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sessionEndPoint'] as _i6.SessionEndPoint).getComment(
            session,
            params['brandId'],
          ),
        ),
      },
    );
  }
}
