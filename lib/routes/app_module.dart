import 'package:flutter_modular/flutter_modular.dart';
import 'package:meu_site/app.dart' deferred as app;
import 'package:meu_site/routes/route_middleware.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => app.App(), guards: [
          RouteMiddleware((path, route) async => await app.loadLibrary()),
        ]),
      ];
}
