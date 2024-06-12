import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../stores/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    super.key,
    this.title = 'Home',
  });

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  void dispose() {
    Modular.dispose<HomeStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("Home"),
      ),
    );
  }
}
