import 'package:flutter_modular/flutter_modular.dart';
import 'stores/home_store.dart';

import 'pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.add(HomeStore.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const HomePage());
  }
}
