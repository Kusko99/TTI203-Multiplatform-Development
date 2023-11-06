import 'package:flutter/material.dart';
import './telas/login_tela.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Login',
        home: Scaffold(
          body: LoginTela(),
        ));
  }
}
