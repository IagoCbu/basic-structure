import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../stores/sign_in_store.dart';

class SignInPage extends StatefulWidget {
  final String title;

  const SignInPage({
    super.key,
    this.title = 'SignIn',
  });

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  late final SignInStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<SignInStore>();
  }

  @override
  void dispose() {
    Modular.dispose<SignInStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("SignIn"),
      ),
    );
  }
}
