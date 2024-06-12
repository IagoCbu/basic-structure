import 'package:flutter_modular/flutter_modular.dart';

class HomeRoutes {
  static const String home = '/';
  
  static void navigateHome() {
    Modular.to.navigate(home);
  }
}