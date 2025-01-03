import 'package:sneaker_client/sneaker_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:sneaker_flutter/router.dart';
import 'package:sneaker_flutter/utils/auth_manager.dart';



var client = Client(
  'http://$localhost:8080/',
  authenticationKeyManager: JwtAuthManager(),
)..connectivityMonitor = FlutterConnectivityMonitor();

final authManager = JwtAuthManager()..init();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Stepish',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
    );
  }
}



