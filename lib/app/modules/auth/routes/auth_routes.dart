import 'package:flutter_modular/flutter_modular.dart';

import '../../../app_routes.dart';

class AuthRoutes {
  static const signIn = '/';
  static const signUp = '/sign_up/';
  static const forgotPassword = '/forgot_password/';

  static Future<dynamic> pushSignUp() async {
    return await Modular.to.pushNamed(
      AppRoutes.merge(
        AppRoutes.auth,
        signUp,
      ),
    );
  }

  static Future<dynamic> pushForgotPassword() async {
    return await Modular.to.pushNamed(
      AppRoutes.merge(
        AppRoutes.auth,
        forgotPassword,
      ),
    );
  }
}
