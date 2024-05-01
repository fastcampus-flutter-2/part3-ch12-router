import 'package:ch12_fastcampus_go_router/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GlobalKey<NavigatorState> _rootNavKey = GlobalKey();
GlobalKey<NavigatorState> _shellNavKey = GlobalKey();

final shellRouter = GoRouter(
  navigatorKey: _rootNavKey,
  initialLocation: "/user",
  routes: [
    ShellRoute(
        navigatorKey: _shellNavKey,
        routes: [
          GoRoute(
            path: "/user",
            builder: (context, state) => UserScreen(),
          ),
          GoRoute(
            path: "/login",
            builder: (context, state) => LoginScreen(),
          ),
        ],
        builder: (context, state, child) {
          return HomeScreen(
            child: child,
          );
        })
  ],
);
