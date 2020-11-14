import 'package:ejemplo_01_contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
