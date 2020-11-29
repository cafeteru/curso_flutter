import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final urls = [
    'https://images5.alphacoders.com/314/thumb-1920-314574.png',
    'https://c4.wallpaperflare.com/wallpaper/1018/757/297/anime-sword-art-online-sao-hd-wallpaper-preview.jpg',
    'https://wallpapercave.com/wp/wp3155076.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        // EdgeInsets = Objecto para meter paddings
        padding: EdgeInsets.all(10.5),
        children: [
          _cardType1(),
          SizedBox(
            height: 30.0,
          ),
          _cardType2(urls[0]),
          SizedBox(
            height: 30.0,
          ),
          _cardType2(urls[1]),
          SizedBox(
            height: 30.0,
          ),
          _cardType2(urls[2])
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      // Altura de la tarjeta respecto a su sombra
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // Column: ordena elementos de forma vertical
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Titulo'),
            subtitle: Text('Subtitulo de la tarjeta'),
          ),
          // Row: ordena elementos de forma horizontal
          Row(
            // MainAxisAlignment = Propiedad para determinar desde donde se
            // ordenan los elementos
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Ok')),
              FlatButton(onPressed: () {}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2(String url) {
    final card = Container(
      child: Column(
        children: [
          // FadeInImage = widget para mostrar un loading mientras carga
          FadeInImage(
              // NetworkImage = Widget para cargar imagenes desde URLS
              image: NetworkImage(url),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 300),
              height: 300.0,
              fit: BoxFit.cover),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Prueba de carga de imagen por URL'))
        ],
      ),
    );
    // Container = es como un div de html
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                // Si añadimos numero a un color, le añadidmos opacidad
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2, 10.0))
          ]),
      // ClipRRect = widget para controlar el contenido dentro de un container
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }
}
