import 'package:flutter/material.dart';

class CdDuroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disco Duro(Mecanico)'),
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
                  'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/disco_duro.png?raw=true'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Disco Duro(Mecanico)',
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
    child: Text('¿Que es Disco Duro(Mecanico)?',
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
          'Son dispositivos de almacenamiento de datos en los que podemos almacenar cualquier tipo de información digital. Ya sean fotografías, vídeos, archivos de texto o programas informáticos, el disco duro es una de las partes más importantes de cualquier sistema informático. Está formado por platos encerrados en una pequeña caja de metal sobre los cuales existe un cabezal para poder leer y escribir la información.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'La primera empresa en comercializarlos fue IBM en 1956. Están compuestos de piezas mecánicas, de ahí que a veces se le llame discos duros mecánicos, y utilizan el magnetismo para grabar tus datos y archivos.',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
