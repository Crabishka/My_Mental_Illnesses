import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sneaker_flutter/screen/catalog_screen.dart';
import 'package:sneaker_flutter/screen/create_screen.dart';
import 'package:sneaker_flutter/screen/favourites_screen.dart';
import 'package:sneaker_flutter/screen/home_screen.dart';
import 'package:sneaker_flutter/screen/product_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/catalog',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
        return HomeScreen(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
                path: '/catalog',
                builder: (BuildContext context, GoRouterState state) => const CatalogScreen(),
                routes: [
                  GoRoute(
                    path: '/product-details/:brandId',
                    builder: (BuildContext context, GoRouterState state) => ProductScreen(
                      brandId: int.parse(state.pathParameters['brandId']!),
                    ),
                  ),
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/favourites',
              builder: (BuildContext context, GoRouterState state) => const FavouritesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/create',
              builder: (BuildContext context, GoRouterState state) => const CreateScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
