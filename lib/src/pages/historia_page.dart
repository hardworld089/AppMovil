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
      child: Column(children: const [
        Title(),
        Cards(), /* botonPruebaHistoria() */
      ]),
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
                        titulosCards(text: 'PIMERA GENERACI??N. (1946-1958)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'La tecnolog??a de esta generaci??n se basaba en grandes y pesadas v??lvulas de vac??o; las cuales se sobre calentaban, y hab??a que cambiarlas con frecuencias Las computadoras de la primera Generaci??n emplearon bulbos para procesar informaci??n. Los operadores ingresaban los datos y programas en c??digo especial por medio de tarjetas perforadas. El almacenamiento interno se lograba con un tambor que giraba r??pidamente, sobre el cual un dispositivo de lectura/escritura colocaba marcas magn??ticas. Esas computadoras de bulbos eran mucho m??s grandes y generaban m??s calor que los modelos contempor??neos.')
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
                        titulosCards(text: 'SEGUNDA GENERACI??N. (1958-1963)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Reemplaz?? las v??lvulas de vac??o por los transistores. Por eso, las computadoras de la segunda generaci??n son m??s peque??as y consumen menos electricidad que las de la anterior. La comunicaci??n con estas nuevas computadoras es mediante lenguajes m??s avanzados que el lenguaje de m??quina, los cuales reciben el nombre de ???lenguajes de alto nivel".')
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
                        titulosCards(text: 'TERCERA GENERACI??N. (1964-1971)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Las computadoras de la tercera generaci??n emergieron con el desarrollo de los circuitos integrados (pastillas de silicio) en las cuales se colocan miles de componentes electr??nicos, en una integraci??n en miniatura. Las computadoras nuevamente se hicieron m??s peque??as, m??s r??pidas, desprend??an menos calor y eran energ??ticamente m??s eficientes.')
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
                        titulosCards(text: 'CUARTA GENERACI??N. (1971-1981)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Dos mejoras en la tecnolog??a de las computadoras marcan el inicio de la cuarta generaci??n: el reemplazo de las memorias con n??cleos magn??ticos, por las de chips de silicio y la colocaci??n de muchos m??s componentes en un Chip: producto de la micro miniaturizaci??n de los circuitos electr??nicos. El tama??o reducido del microprocesador y de chips hizo posible la creaci??n de las computadoras personales (PC)')
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
                        titulosCards(text: 'QUINTA GENERACI??N.  (1982-1990)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Los ordenadores contienen una gran cantidad de microprocesadores trabajando de manera paralela, lo que permite el reconocimiento de voz e im??genes.  Asimismo, tienen la capacidad de comunicarse con un lenguaje natural e ir adquiriendo la habilidad para tomar decisiones con base en procesos de aprendizaje fundamentados en sistemas expertos e inteligencia artificial.')
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
                            text: 'SEXTA GENERACI??N. (2000-Actualidad)'),
                        GetDivisor(),
                        textContenCards(
                            text:
                                'Una generaci??n en la cual los ordenadores son m??s peque??os, vers??tiles y poseen, como herramienta indispensable, Internet. podr??a denominarse como la era de las computadoras basadas en redes neuronales artificiales o ???cerebros artificiales???.')
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
