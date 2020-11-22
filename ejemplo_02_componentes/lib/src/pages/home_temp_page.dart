import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createItemsMap(),
      ),
    );
  }

  List<Widget> _createItemsMap() {
    final options = ['One', 'Two', 'Three', 'Four', 'Five'];
    return options
        .map((option) => Column(
              children: [
                ListTile(
                  title: Text(option),
                  subtitle: Text('Suboption of $option'),
                  leading: Icon(Icons.assessment),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    print(option);
                  },
                ),
                Divider(
                  color: Colors.blue,
                )
              ],
            ))
        .toList();
  }
}
