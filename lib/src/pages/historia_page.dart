import 'package:flutter/material.dart';

class HistoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Historia de las computadoras',
        ),
      ),
      body: _bodyHistoria(),
    );
  }
}

_bodyHistoria() {
  return Scaffold(
    body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(children: const [Title(), Cards(), botonPruebaHistoria()]),
    ),
  );
}

class botonPruebaHistoria extends StatelessWidget {
  const botonPruebaHistoria({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('REALIZAR PRUEBA'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HistoriaPage()),
        );
      },
      style: ElevatedButton.styleFrom(
          shadowColor: const Color.fromARGB(255, 6, 12, 17),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 7),
          textStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const getCards();
  }
}

class getCards extends StatelessWidget {
  const getCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  const FadeInImage(
                    image: NetworkImage(
                        'https://concepto.de/wp-content/uploads/2019/07/generaciones-de-las-computadoras-e1563970798733.jpg'),
                    placeholder: NetworkImage(
                        'https://acegif.com/wp-content/uploads/loading-98.gif'),
                  ),
                  Container(
                    color: Colors.blue[300],
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: const [
                        titulosCards(text: 'PIMERA GENERACIÓN. (1946-1958)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'La tecnología de esta generación se basaba en grandes y pesadas válvulas de vacío; las cuales se sobre calentaban, y había que cambiarlas con frecuencias Las computadoras de la primera Generación emplearon bulbos para procesar información. Los operadores ingresaban los datos y programas en código especial por medio de tarjetas perforadas. El almacenamiento interno se lograba con un tambor que giraba rápidamente, sobre el cual un dispositivo de lectura/escritura colocaba marcas magnéticas. Esas computadoras de bulbos eran mucho más grandes y generaban más calor que los modelos contemporáneos.')
                      ],
                    ),
                  ),
                ],
              ),
            )),

        /* secundo card */
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  const FadeInImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/75/ba/16/75ba16dbf531b06bc0495f33b7aabf82.gif'),
                    placeholder: NetworkImage(
                        'https://acegif.com/wp-content/uploads/loading-98.gif'),
                  ),
                  Container(
                    color: Colors.blue[300],
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: const [
                        titulosCards(text: 'SEGUNDA GENERACIÓN. (1958-1963)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Reemplazó las válvulas de vacío por los transistores. Por eso, las computadoras de la segunda generación son más pequeñas y consumen menos electricidad que las de la anterior. La comunicación con estas nuevas computadoras es mediante lenguajes más avanzados que el lenguaje de máquina, los cuales reciben el nombre de “lenguajes de alto nivel".')
                      ],
                    ),
                  ),
                ],
              ),
            )),
        /* Terser card */
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  const FadeInImage(
                    image: NetworkImage(
                        'http://juliancalderon.weebly.com/uploads/5/1/1/9/51195425/6245862_orig.jpg'),
                    placeholder: NetworkImage(
                        'https://acegif.com/wp-content/uploads/loading-98.gif'),
                  ),
                  Container(
                    color: Colors.blue[300],
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: const [
                        titulosCards(text: 'TERCERA GENERACIÓN. (1964-1971)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Las computadoras de la tercera generación emergieron con el desarrollo de los circuitos integrados (pastillas de silicio) en las cuales se colocan miles de componentes electrónicos, en una integración en miniatura. Las computadoras nuevamente se hicieron más pequeñas, más rápidas, desprendían menos calor y eran energéticamente más eficientes.')
                      ],
                    ),
                  ),
                ],
              ),
            )),
        /* Cuarto card */
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  const FadeInImage(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-jE3HWI-h444/Xd_B48ck9CI/AAAAAAAALdU/_mvNqCGsMToelEQaFz4dphPLUCHWQbB_gCLcBGAsYHQ/s1600/micral1.jpg'),
                    placeholder: NetworkImage(
                        'https://acegif.com/wp-content/uploads/loading-98.gif'),
                  ),
                  Container(
                    color: Colors.blue[300],
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: const [
                        titulosCards(text: 'CUARTA GENERACIÓN. (1971-1981)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Dos mejoras en la tecnología de las computadoras marcan el inicio de la cuarta generación: el reemplazo de las memorias con núcleos magnéticos, por las de chips de silicio y la colocación de muchos más componentes en un Chip: producto de la micro miniaturización de los circuitos electrónicos. El tamaño reducido del microprocesador y de chips hizo posible la creación de las computadoras personales (PC)')
                      ],
                    ),
                  ),
                ],
              ),
            )),

        /* quinta */
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  const FadeInImage(
                    image: NetworkImage(
                        'https://cdn.goconqr.com/uploads/slide_property/image/299190/a78b735a-8d98-435a-9a61-9c72f4376f1a.jpg'),
                    placeholder: NetworkImage(
                        'https://acegif.com/wp-content/uploads/loading-98.gif'),
                  ),
                  Container(
                    color: Colors.blue[300],
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: const [
                        titulosCards(text: 'QUINTA GENERACIÓN.  (1982-1990)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Los ordenadores contienen una gran cantidad de microprocesadores trabajando de manera paralela, lo que permite el reconocimiento de voz e imágenes.  Asimismo, tienen la capacidad de comunicarse con un lenguaje natural e ir adquiriendo la habilidad para tomar decisiones con base en procesos de aprendizaje fundamentados en sistemas expertos e inteligencia artificial.')
                      ],
                    ),
                  ),
                ],
              ),
            )),

        /* Sexta generacion */

        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  const FadeInImage(
                    image: NetworkImage(
                        'https://www.euston96.com/wp-content/uploads/2018/03/Sexta-generaci%C3%B3n-de-computadoras.jpg'),
                    placeholder: NetworkImage(
                        'https://acegif.com/wp-content/uploads/loading-98.gif'),
                  ),
                  Container(
                    color: Colors.blue[300],
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: const [
                        titulosCards(
                            text: 'SEXTA GENERACIÓN. (2000-Actualidad)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Una generación en la cual los ordenadores son más pequeños, versátiles y poseen, como herramienta indispensable, Internet. podría denominarse como la era de las computadoras basadas en redes neuronales artificiales o “cerebros artificiales”.')
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class textContenCards extends StatelessWidget {
  final String text;
  const textContenCards({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(
            color: Color.fromARGB(255, 8, 48, 80), fontSize: 18),
      ),
    );
    ;
  }
}

class titulosCards extends StatelessWidget {
  final String text;
  const titulosCards({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            color: Color.fromARGB(255, 249, 251, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class GetDivisor extends StatelessWidget {
  const GetDivisor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10,
      color: Colors.blue,
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(10),
      child: const Center(
          child: Text(
        'La Historia de las computadoras',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 254, 254, 255)),
      )),
    );
  }
}
