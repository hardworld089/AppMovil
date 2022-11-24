import 'package:flutter/material.dart';

class MonitorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('El Monitor'),
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
                  'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/monitor.png?raw=true'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'MONITOR',
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
    child: Text('¿Que es el Monitor?',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
  );
}

// ignore: non_constant_identifier_names
_Contenido() {
  return Padding(
    padding: EdgeInsets.all(15.0),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'El monitor es un dispositivo electrónico de salida de la computadora en el que se muestran las imágenes y textos generados por medio de un adaptador gráfico o de video de ésta.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'También conocido como pantalla,  muestra la información de tu equipo como imágenes y textos, que son generados gracias a una tarjeta de video que se encuentra en el interior de la torre del computador. La función del  este dispositivo  que puedas interactuar con el computador, con la ayuda del ratón y el teclado.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
