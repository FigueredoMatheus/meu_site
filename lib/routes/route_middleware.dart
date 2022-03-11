import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

class RouteMiddleware extends RouteGuard {
  FutureOr<void> Function(String path, ParallelRoute route)? middleware;
  RouteMiddleware(this.middleware);

  @override
  Future<bool> canActivate(String path, ParallelRoute route) async => true;

  @override
  FutureOr<ModularRoute?> pre(ModularRoute route) async {
    await middleware?.call(route.uri.toString(), route as ParallelRoute);
    return route;
  }
}
