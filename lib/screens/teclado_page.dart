import 'package:flutter/material.dart';

class TecladoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('El Teclado'),
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
                  'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/teclado.png?raw=true'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'El Teclado',
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
    child: Text('¿Que es el Teclado?',
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
          'Dispositivo de ingreso o entrada de información. Consiste en un conjunto de teclas o botones dispuestos de manera horizontal sobre una lámina, donde actúan como palancas mecánicas o interruptores electrónicos, permitiendo así el ingreso de información codificada al sistema informático por parte del usuario.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'La historia del teclado moderno comienza con una herencia directa de la invención de la máquina de escribir. Christopher Latham Sholes patentó la primera máquina de escribir moderna y práctica en 1868 y poco después, en 1877, la Remington Company comenzó a comercializar masivamente este nuevo invento.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
