import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../stores/forgot_password_store.dart';

class ForgotPasswordPage extends StatefulWidget {
  final String title;

  const ForgotPasswordPage({
    super.key,
    this.title = 'ForgotPassword',
  });

  @override
  ForgotPasswordPageState createState() => ForgotPasswordPageState();
}

class ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late final ForgotPasswordStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<ForgotPasswordStore>();
  }

  @override
  void dispose() {
    Modular.dispose<ForgotPasswordStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("ForgotPassword"),
      ),
    );
  }
}
