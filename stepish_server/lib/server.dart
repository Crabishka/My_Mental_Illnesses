import 'package:serverpod/serverpod.dart';

import 'package:sneaker_server/src/web/routes/root.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

void run(List<String> args) async {
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: (session, token) async {
      // print('[TOKEN] $token');

      final Set<Scope> scopes = {};

      return AuthenticationInfo(
        // authId: token,
        -1,
        scopes,
      );
    },
  );

  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');

  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  await pod.start();
}
