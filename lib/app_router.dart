// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/signup_page.dart';
import 'pages/settings_page.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: '/sign-up',
        builder: (context, state) => SignUpPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );
}
