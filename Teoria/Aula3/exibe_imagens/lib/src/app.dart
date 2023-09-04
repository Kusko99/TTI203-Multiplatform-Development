import 'package:flutter/material.dart';

class AppState extends State<App> {
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.favorite, color: Colors.pink),
          onPressed: () {
            setState(() => numeroImagens++);
            // print("OI EU SOU O GOKU!!!");
          },
        ),
        body: Text('$numeroImagens'),
      ),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}
