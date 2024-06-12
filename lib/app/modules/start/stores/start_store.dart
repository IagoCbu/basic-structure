import 'package:flutter_triple/flutter_triple.dart';

import '../../../app_routes.dart';
import '../states/start_state.dart';

class StartStore extends Store<StartState> {
  StartStore() : super(StartState());

  @override
  Future<void> initStore() async {
    super.initStore();

    await Future.delayed(const Duration(seconds: 3));

    // ignore: dead_code
    if (/*usuario logado*/ true) {
      await AppRoutes.navigateHome();
      return;
    }
    
    // ignore: dead_code
    await AppRoutes.navigateAuth();
  }
}