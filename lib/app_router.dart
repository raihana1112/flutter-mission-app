// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/signup_page.dart';
import 'pages/settings_page.dart';
import 'pages/missions_page.dart';
import 'pages/rewards_ads.dart';
import 'pages/payout_history.dart';
import 'pages/payouts.dart';
import 'pages/payout_success.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => LoginPage()),
      GoRoute(path: '/sign-up', builder: (context, state) => SignUpPage()),
      GoRoute(path: '/home', builder: (context, state) => HomePage()),
      GoRoute(
        path: '/settings',
        builder: (context, state) => SettingsPage(),
      ),
      GoRoute(
        path: '/missions',
        builder: (context, state) => MissionsPage(),
      ),
      GoRoute(
      path: '/rewards-ads',
      builder: (context, state) => RewardsAdsPage(),
      ),
      GoRoute(
        path: '/payouts',
        builder: (context, state) => PayoutsPage(),
      ),
      GoRoute(
        path: '/payout-history',
        builder: (context, state) => PayoutHistoryPage(),
      ),
      GoRoute(
        path: '/payout-success',
        builder: (context, state) => PayoutSuccessPage(),
      ),
    ],
  );
}
