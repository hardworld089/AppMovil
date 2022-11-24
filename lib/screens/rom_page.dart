import 'package:flutter/material.dart';

class RomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memoria ROM'),
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
                  'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/rom.png?raw=true'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Memoria ROM',
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
    child: Text('¿Que es la memoria ROM?',
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
          'Se llama así por las siglas en inglés Read Only Memory, o memoria de solo lectura.   Es el medio de almacenamiento de programas o datos que permiten el buen funcionamiento de los ordenadores o dispositivos electrónicos a través de la lectura de la información sin que pueda ser destruida o reprogramable.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          '¿Cuándo se creó memoria ROM? Inventada en 1956, permitía a los usuarios modificarla solo una vez, alterando físicamente su estructura con la aplicación de pulsos de alto voltaje.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
