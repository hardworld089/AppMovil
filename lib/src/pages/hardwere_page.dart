import 'package:flutter/material.dart';

class HardwerePage extends StatelessWidget {
  const HardwerePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Elemento Hardwere'),
        ),
        body: ContainerHardwere());
  }
}

// ignore: non_constant_identifier_names
ContainerHardwere() {
  return SingleChildScrollView(
    child: Column(children: const [
      HeroElementHard(),
      TituloElementos(),
      RowElementsUno(),
      RowElementsDos(),
      RowElementsTres(),
      RowElementsCuatro(),
      RowElementsCinco(),
      RowElementsSeis()
    ]),
  );
}

class HeroElementHard extends StatelessWidget {
  const HeroElementHard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Image.asset(
          'assets/Hardworld.png',
          height: 200,
        ),
      ),
    );
  }
}

class TituloElementos extends StatelessWidget {
  const TituloElementos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: const Text(
        'Estos son elementos del Hardwere de una computadora',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class RowElementsUno extends StatelessWidget {
  const RowElementsUno({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('cpu');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/cpu.png?raw=true',
                      width: 100,
                    ),
                    const Text('CPU',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('monitor');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color:
                        Color.fromARGB(255, 10, 10, 10), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/monitor.png?raw=true',
                      width: 100,
                    ),
                    const Text('Monitor',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowElementsDos extends StatelessWidget {
  const RowElementsDos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('cpu');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/mouse.png?raw=true',
                      width: 100,
                    ),
                    const Text('RATON',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('monitor');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color:
                        Color.fromARGB(255, 10, 10, 10), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/teclado.png?raw=true',
                      width: 100,
                    ),
                    const Text('TECLADO',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowElementsTres extends StatelessWidget {
  const RowElementsTres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('cpu');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/ram.png?raw=true',
                      width: 100,
                    ),
                    const Text('RAM',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('monitor');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color:
                        Color.fromARGB(255, 10, 10, 10), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/rom.png?raw=true',
                      width: 100,
                    ),
                    const Text('ROM',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowElementsCuatro extends StatelessWidget {
  const RowElementsCuatro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('cpu');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/disco_duro.png?raw=true',
                      width: 100,
                    ),
                    const Text('Cd. Duro',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('monitor');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color:
                        Color.fromARGB(255, 10, 10, 10), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/ssd.jpg?raw=true',
                      width: 100,
                    ),
                    const Text('Cd. Solido',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowElementsCinco extends StatelessWidget {
  const RowElementsCinco({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('cpu');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/alimentacion.png?raw=true',
                      width: 100,
                    ),
                    const Text('Alimentacion',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('monitor');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color:
                        Color.fromARGB(255, 10, 10, 10), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/video.jpg?raw=true',
                      width: 100,
                    ),
                    const Text('T. Video',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowElementsSeis extends StatelessWidget {
  const RowElementsSeis({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('cpu');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/Procesador.png?raw=true',
                      width: 100,
                    ),
                    const Text('Procesador',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('monitor');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, // Color of the container
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius of the border
                  border: Border.all(
                    width: 2.0,
                    color:
                        Color.fromARGB(255, 10, 10, 10), // Color of the border
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://github.com/Benjamin98100/ImagenesBenja/blob/main/imgLearnHardworld/sonido.jpg?raw=true',
                      width: 100,
                    ),
                    const Text('T. Sonido',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
