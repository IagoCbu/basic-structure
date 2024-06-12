import 'package:flutter_modular/flutter_modular.dart';

class AppRoutes {
  static const String start = '/';
  static const String auth = '/auth/';
  static const String home = '/home/';

  static String merge(String moduleRoute, String pageRoute) => '$moduleRoute$pageRoute'.replaceAll('//', '/');

  static Future<void> navigateAuth() async {
    Modular.to.navigate(auth);
  }
  
  static Future<void> navigateHome() async {
    Modular.to.navigate(home);
  }
}