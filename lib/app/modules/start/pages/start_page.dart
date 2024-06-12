import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../stores/start_store.dart';

class StartPage extends StatefulWidget {
  final String title;

  const StartPage({
    super.key,
    this.title = 'Start',
  });

  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  late final StartStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<StartStore>();
  }

  @override
  void dispose() {
    Modular.dispose<StartStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("Start"),
      ),
    );
  }
}
