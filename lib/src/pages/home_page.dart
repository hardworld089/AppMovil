import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:login/data%20Get/get_user_name.dart';
import 'package:login/src/pages/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //document IDs

  List<String> docgetId = [];
  Future getDocID() async {
    final userID = FirebaseAuth.instance.currentUser!;
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
              docgetId.add(element.reference.id);
            }));
  }

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
