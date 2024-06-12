import 'package:flutter_modular/flutter_modular.dart';

import 'pages/start_page.dart';
import 'stores/start_store.dart';

class StartModule extends Module {
  @override
  void binds(Injector i) {
    i.add(StartStore.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const StartPage());
  }
}
