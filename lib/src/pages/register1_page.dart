import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResgisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const ResgisterPage({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  @override
  State<ResgisterPage> createState() => _ResgisterPageState();
}

class _ResgisterPageState extends State<ResgisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordComfirmController = TextEditingController();
  final _nameController = TextEditingController();
  final _ageConroller = TextEditingController();
  final _apellidoController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordComfirmController.dispose();
    _nameController.dispose();
    _ageConroller.dispose();
    _apellidoController.dispose();
    super.dispose();
  }

  Future singUp() async {
    if (validations() && passwordConfirmed()) {
      //crear usuario
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());

      //añadir los dealles del usuario
      UserAddDetails(
          _nameController.text.trim(),
          _apellidoController.text.trim(),
          _emailController.text.trim(),
          int.parse(_ageConroller.text.trim()));
    } else {
      return _tipoAlerta();
    }
  }

  Future UserAddDetails(
      String name, String apellidoPaterno, String email, int age) async {
    await FirebaseFirestore.instance.collection('users').add({
      'nombre': name,
      'apellido_paterno': apellidoPaterno,
      'email': email,
      'edad': age
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _passwordComfirmController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  bool validations() {
    if (_ageConroller.text.isEmpty ||
        _apellidoController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _nameController.text.isEmpty ||
        _passwordComfirmController.text.isEmpty ||
        _passwordController.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  _tipoAlerta() {
    if (validations() == false) {
      return _campoVacio();
    } else if (passwordConfirmed() == false) {
      return _passNoCoincide();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 12, 12),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                /* const Icon(
                Icons.phone_android,
                size: 100,
              ), */

                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Que gusto que estes aqui!',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 30, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Registrate ahora con tus datos',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 136, 200, 252))),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(14)),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Nombre'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(14)),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _apellidoController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Apellido Paterno'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(14)),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _ageConroller,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Edad'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(14)),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Correo Electronico'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Contraseña'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordComfirmController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Confirmar Contraseña'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: singUp,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        'Registrar',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      '¿Ya eres miembro? - ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      // ignore: prefer_const_constructors
                      child: Text(
                        'Ingresa aqui!',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }

  _passNoCoincide() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          // ignore: prefer_const_constructors
          return AlertDialog(
            title: const Center(
              child: Text(
                'Error!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Center(
                    child: Image.asset(
                  'assets/alertErr.png',
                  height: 70,
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                      '¡Las contraseñas no coinciden por favor verífica que sean iguales!',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Probar de nuevo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 4, 103, 216)),
                  )),
            ],
          );
        });
  }

  _campoVacio() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          // ignore: prefer_const_constructors
          return AlertDialog(
            title: const Center(
              child: Text(
                'Error!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Center(
                    child: Image.asset(
                  'assets/alertErr.png',
                  height: 70,
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text('No puedes dejar campos vacios',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Probar de nuevo',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 4, 103, 216)),
                  )),
            ],
          );
        });
  }
}
