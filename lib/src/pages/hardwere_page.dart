import 'package:flutter/material.dart';

class HardwerePage extends StatefulWidget {
  const HardwerePage({super.key});

  @override
  State<HardwerePage> createState() => _HardwerePageState();
}

class _HardwerePageState extends State<HardwerePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Items Hardwere'),
    ));
  }
}
