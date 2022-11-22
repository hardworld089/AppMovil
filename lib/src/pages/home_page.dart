import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
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
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(user.displayName ?? "Bienvenido",
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 247, 247, 247))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 10,
            ),
            Text('MODO PRUEBA - GRACIAS POR REGISTRARTE'),
            SizedBox(
              height: 5,
            ),
            Text(
              'ES TODO POR VER XD PERO NO TE AGUITES PRONTO SALDRA LA VERSION COMPLETA',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
