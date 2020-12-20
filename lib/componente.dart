import 'package:flutter/material.dart';

class Componente {
  Widget logoOne({heigth: 300.0, width: 300.0}) {
    return Image.asset(
      'imagem/kylo.png',
      height: heigth,
      width: width,
    );
  }

  Widget logoTwo({heigth: 300.0, width: 300.0}) {
    return Image.asset(
      'imagem/dart.png',
      height: heigth,
      width: width,
    );
  }

  Widget appBar() {
    return Center(
      child: Text(
        'Lado Sombrio da Força',
        style: TextStyle(letterSpacing: 3.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
