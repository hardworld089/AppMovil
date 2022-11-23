import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:login/src/pages/cuanto_sabes.dart';
import 'package:login/src/pages/hardwere_page.dart';
import 'package:login/src/pages/historia_page.dart';
import 'package:login/src/pages/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //document IDs

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: Text(user.displayName ?? "Bienvenido",
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 247, 247, 247))),
      ),
      body: const TempHomeScrim(),
    );
  }
}

class TempHomeScrim extends StatelessWidget {
  const TempHomeScrim({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //imagen
          const Image(image: AssetImage('assets/heroimg.jpeg')),
          //title
          const Title(),
          //buttonSection
          const ButtonSection(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Text(
                "El hardware es lo que hace a una máquina rápida; el software es lo que hace que una máquina rápida se vuelva lenta : Craig Bruce",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          cardHistoria(),
        ],
      ),
    ));
  }
}

class cardHistoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HistoriaPage()),
        );
      },
      child: Card(
        color: Color.fromARGB(221, 68, 92, 226),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(15),
        elevation: 10,
        /*         */
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen
            const FadeInImage(
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: NetworkImage(
                  'https://i.pinimg.com/originals/c9/a4/47/c9a4476e57fc91d5f3e85aa9b6d13646.jpg'),
              placeholder: NetworkImage(
                  'https://acegif.com/wp-content/uploads/loading-98.gif'),
            ),

            // Usamos Container para el contenedor de la descripción
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Ver Historia de las computadoras',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset(
                'assets/Hardworld.png',
                height: 150,
              ),
              const Text('Bienvenido a Hardworld Learn',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue)),
              const Text('¿Que esperas para aprender?',
                  style: TextStyle(color: Colors.black54, fontSize: 17)),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HardwerePage()),
              );
            },
            child: const CustomButton(
              icon: Icons.computer,
              text: '¿Hardware?',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CuantoPage()),
              );
            },
            child: const CustomButton(
              icon: Icons.analytics_sharp,
              text: '¿Cuanto Sabes?',
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 118, 225, 252),
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
          border: Border.all(
            color: const Color.fromARGB(255, 99, 98, 98),
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 8, 48, 80),
            size: 35,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 8, 48, 80), fontSize: 18),
          )
        ],
      ),
    );
  }
}
