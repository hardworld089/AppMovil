import 'package:flutter/material.dart';
import 'package:login/src/pages/quizz_screen.dart';

class CuantoPage extends StatefulWidget {
  const CuantoPage({super.key});

  @override
  State<CuantoPage> createState() => _CuantoPageState();
}

class _CuantoPageState extends State<CuantoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba tus conocimientos'),
      ),
      body: QuizScreen(),
    );
  }
}
