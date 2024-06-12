import 'package:flutter_modular/flutter_modular.dart';

import 'app_routes.dart';
import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';
import 'modules/shared/shared_module.dart';
import 'modules/start/start_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
    SharedModule(),
  ];

  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module(AppRoutes.start, module: StartModule());
    r.module(AppRoutes.auth, module: AuthModule());
    r.module(AppRoutes.home, module: HomeModule());
  }
}
