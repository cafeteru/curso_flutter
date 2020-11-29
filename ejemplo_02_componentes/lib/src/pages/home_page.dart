import 'package:ejemplo_02_componentes/src/providers/menu_provider.dart';
import 'package:ejemplo_02_componentes/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  FutureBuilder<List<dynamic>> _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _listItems(List<dynamic> options, BuildContext context) {
    return options.map((option) {
      return Column(
        children: [
          ListTile(
            title: Text(option['texto']),
            leading: getIcon(option['icon']),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            onTap: () => Navigator.pushNamed(context, '/${option['ruta']}'),
          ),
          Divider(
            color: Colors.blue,
          )
        ],
      );
    }).toList();
  }
}
