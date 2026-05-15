import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_online_flutter/presentation/screen/home_screen/home_bloc_provider.dart';

final GoRouter routers = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeBlocProvider();
      },

    ),
  ],
);