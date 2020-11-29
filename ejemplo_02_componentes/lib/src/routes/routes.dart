import 'package:ejemplo_02_componentes/src/pages/alert_page.dart';
import 'package:ejemplo_02_componentes/src/pages/avatar_page.dart';
import 'package:ejemplo_02_componentes/src/pages/card_page.dart';
import 'package:ejemplo_02_componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    '/alert': (context) => AlertPage(),
    '/avatar': (context) => AvatarPage(),
    '/card': (context) => CardPage()
  };
}
