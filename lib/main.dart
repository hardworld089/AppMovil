import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login/src/Auth/main_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'data Get/get_user_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

/* benja99@gmail.com */
/* benja12345 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'main_page',
      routes: {'main_page': (_) => MainPage()},
    );
  }
}
