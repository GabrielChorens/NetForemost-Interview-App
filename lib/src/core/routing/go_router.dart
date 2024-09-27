// ignore_for_file: constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_flutter/src/core/routing/routing_utils.dart';
import 'package:interview_flutter/src/core/ui/widgets/navigation_bar.dart';
import 'package:interview_flutter/src/features/current_conditions/ui/screens/forecasts_screen.dart';
import 'package:interview_flutter/src/features/home/ui/screens/home_screen.dart';
import 'package:interview_flutter/src/features/language/ui/language_screen.dart';

///Initial route of the determined by the current state of the app
String get _initialRoute => '/';

///Global variable to keep the current state of the router
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final _shellNavigatorKeyHome =
    GlobalKey<NavigatorState>(debugLabel: 'shell-home');
final _shellNavigatorKeyForecasts =
    GlobalKey<NavigatorState>(debugLabel: 'shell-location');
final _shellNavigatorKeyUser =
    GlobalKey<NavigatorState>(debugLabel: 'shell-user');

GoRouter get router => GoRouter(
      initialLocation: _initialRoute,
      debugLogDiagnostics: kDebugMode,
      routes: [
        StatefulShellRoute.indexedStack(
          restorationScopeId: 'shell-navigator',
          builder: (context, state, navigationShell) {
            return ScaffoldWithNavigationBar(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _shellNavigatorKeyHome,
              routes: [
                GoRoute(
                  path: '/home',
                  name: 'home',
                  pageBuilder: (context, state) => adaptivePageRoute(
                    key: state.pageKey,
                    child: const HomeScreen(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorKeyForecasts,
              routes: [
                GoRoute(
                  path: '/',
                  name: 'forecasts',
                  pageBuilder: (context, state) => adaptivePageRoute(
                    key: state.pageKey,
                    child: const ForecastsScreen(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorKeyUser,
              routes: [
                GoRoute(
                  path: '/user',
                  name: 'user',
                  pageBuilder: (context, state) => adaptivePageRoute(
                    key: state.pageKey,
                    child: const LanguageScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
