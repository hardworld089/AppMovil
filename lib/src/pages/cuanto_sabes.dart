import 'package:flutter/material.dart';

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
      title: const Text('Cuanto Sabes'),
    ));
  }
}
