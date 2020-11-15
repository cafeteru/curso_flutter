import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = TextStyle(fontSize: 30);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('01: Contador'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número de clicks:',
                style: _textStyle,
              ),
              Text(
                '$_count',
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButton: _createRow());
  }

  /// Crea el footer de la aplicación con varios elementos
  Row _createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 25),
        _createButton(Icons.exposure_zero_rounded, () => _resetCount()),
        Expanded(child: SizedBox()),
        _createButton(Icons.remove, () => _minusCount()),
        SizedBox(width: 20),
        _createButton(Icons.add, () => _addCount())
      ],
    );
  }

  /// Crea un FloatingActionButton dinamicamente indicando
  /// su icono con [icon] y la función que se ejecutará [fun]
  /// al pulsarlo
  FloatingActionButton _createButton(IconData icon, Function fun) {
    return FloatingActionButton(
      child: Icon(icon),
      onPressed: () {
        /// setState hace que se refresque la vista
        setState(fun);
      },
    );
  }

  void _addCount() => _count++;

  void _minusCount() => _count--;

  void _resetCount() => _count = 0;
}
