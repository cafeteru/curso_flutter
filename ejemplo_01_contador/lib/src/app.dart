import 'package:ejemplo_01_contador/src/pages/counter_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CounterPage(),
      ),
    );
  }
}
