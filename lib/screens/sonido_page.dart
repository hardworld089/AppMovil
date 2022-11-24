import 'package:flutter/material.dart';

class SonidoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Targeta de sonido'),
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
                  'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/sonido.jpg?raw=true'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Targeta de sonido',
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
    child: Text('¿Que es la Targeta de sonido?',
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
          'Una tarjeta de sonido es una pieza de hardware rectangular con numerosos contactos en la parte inferior de la tarjeta y múltiples puertos en la parte lateral para conectar diferentes dispositivos de audio, como por ejemplo parlantes. La tarjeta de sonido se debe instalar en una ranura PCI o PCIe dentro de la placa base. Debido a que la placa base, la caja y las tarjetas periféricas deben estar diseñadas en función a su compatibilidad, la tarjeta de sonido debe ajustarse en la parte posterior del a carcasa del ordenador una vez instalada, lo que permite que sus puertos estén disponibles para su uso constante.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'Los ordenadores modernos no traen tarjetas de expansión de sonido, sino que traen la misma tecnología integrada directamente en la placa base. Este tipo de configuraciones permite que el ordenador en cuestión sea mucho más económico y lograr mejorar el sistema de audio ligeramente. Se trata de una opción ideal para quienes utilizan ordenadores a nivel personal.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
