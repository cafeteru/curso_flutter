import 'package:ejemplo_02_componentes/src/pages/alert_page.dart';
import 'package:ejemplo_02_componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Components App",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // indica la ruta de las pages
      routes: getRoutes(),
      // Ruta por defecto si falla
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
