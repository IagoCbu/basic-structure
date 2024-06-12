import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../stores/sign_up_store.dart';

class SignUpPage extends StatefulWidget {
  final String title;

  const SignUpPage({
    super.key,
    this.title = 'SignUp',
  });

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  late final SignUpStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<SignUpStore>();
  }

  @override
  void dispose() {
    Modular.dispose<SignUpStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("SignUp"),
      ),
    );
  }
}
