import 'package:flutter_modular/flutter_modular.dart';

import 'routes/auth_routes.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/sign_up/sign_up_page.dart';
import 'pages/forgot_password/forgot_password_page.dart';
import 'stores/sign_in_store.dart';
import 'stores/sign_up_store.dart';
import 'stores/forgot_password_store.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i.add(SignInStore.new);
    i.add(SignUpStore.new);
    i.add(ForgotPasswordStore.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(AuthRoutes.signIn, child: (context) => const SignInPage());
    r.child(AuthRoutes.signUp, child: (context) => const SignUpPage());
    r.child(AuthRoutes.forgotPassword, child: (context) => const ForgotPasswordPage());
  }
}
