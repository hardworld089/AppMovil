import 'package:flutter/material.dart';

class RamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memoria RAM'),
      ),
      body: ListView(
        children: <Widget>[
          const HeroElementHard(),
          _Titulo_Contenido(),
          _Contenido()
        ],
      ),
    );
  }
}

class HeroElementHard extends StatelessWidget {
  const HeroElementHard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Image.network(
                  'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/ram.png?raw=true'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Memoria RAM',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
_Titulo_Contenido() {
  return const Padding(
    padding: EdgeInsets.all(15.0),
    child: Text('¿Que es la memoria RAM?',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
  );
}

// ignore: non_constant_identifier_names
_Contenido() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Es la memoria principal de un dispositivo donde se almacena programas y datos informativos. Las siglas RAM significan “Random Access Memory” traducido al español es “Memoria de Acceso Aleatorio”. Es utilizada por un procesador para recibir instrucciones y guardar los resultados.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'En 1969 se lanzó una de las primeras memorias RAM, basadas en semiconductores de silicio por parte del Intel, con el integrado 3101 de 64 bits de memoria. Más adelante, se presentó una memoria DRAM de 1024 bytes, referencia 1103, como la primera en ser comercializada con éxito.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
