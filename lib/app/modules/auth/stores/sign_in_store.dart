import 'package:basic_structure/app/modules/auth/services/interfaces/iauth_service.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../states/sign_in_state.dart';

class SignInStore extends Store<SignInState> {
  final IAuthService _authService;

  SignInStore(this._authService) : super(SignInState());

  Future<void> signIn() async {
    await _authService.signIn();
  }
}