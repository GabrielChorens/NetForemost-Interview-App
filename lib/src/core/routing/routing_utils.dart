import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A route that uses the [adaptivePageRoute].
GoRoute standardRoute({
  required String path,
  String? name,
  Widget Function(BuildContext, GoRouterState)? pageCreator,
  Widget? page,
  List<RouteBase>? routes,
  bool maintainState = true,
  FutureOr<dynamic> Function(BuildContext, GoRouterState)? redirect,
}) =>
    GoRoute(
      path: path,
      name: name,
      pageBuilder: (context, state) => adaptivePageRoute<void>(
        key: state.pageKey,
        maintainState: maintainState,
        child: pageCreator != null
            ? pageCreator(context, state)
            : page ?? const SizedBox(),
      ),
      routes: routes ?? [],
    );

/// Adaptive route that uses cupertino pages on iOS and macos, no transitions on web and material on the rest of the
/// platforms.
Page<T> adaptivePageRoute<T>({
  required LocalKey key,
  required Widget child,
  bool maintainState = true,
  bool fullscreenDialog = false,
  bool allowSnapshotting = true,
  String? name,
  String? title,
  Object? arguments,
  String? restorationId,
}) {
  final iosPlatforms = [TargetPlatform.iOS, TargetPlatform.macOS];
  if (iosPlatforms.contains(defaultTargetPlatform)) {
    return CupertinoPage<T>(
      key: key,
      child: child,
      name: name,
      title: title,
      allowSnapshotting: allowSnapshotting,
      arguments: arguments,
      fullscreenDialog: fullscreenDialog,
      maintainState: maintainState,
      restorationId: restorationId,
    );
  }
  if (kIsWeb) {
    return NoTransitionPage(
      child: child,
      restorationId: restorationId,
      arguments: arguments,
      name: name,
      key: key,
    );
  }
  return MaterialPage<T>(
    key: key,
    child: child,
    name: name,
    allowSnapshotting: allowSnapshotting,
    arguments: arguments,
    fullscreenDialog: fullscreenDialog,
    maintainState: maintainState,
    restorationId: restorationId,
  );
}
