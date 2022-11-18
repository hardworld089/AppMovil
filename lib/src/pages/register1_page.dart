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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordComfirmController.dispose();
    super.dispose();
  }

  Future singUp() async {
    if (passwordConfirmed()) {
      print('si coinsiden');
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } else {
      print('no coinciden');
      print(_passwordComfirmController.text.trim());
      print('pcb');
      print(_passwordController.text.trim());
      return _verAlerta();
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _passwordComfirmController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
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
                Center(
                    child: Image.asset(
                  'assets/Hardworld.png',
                  height: 150,
                )),
                const SizedBox(
                  height: 35,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 179, 17, 17),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      'Google',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                  ),
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

  _verAlerta() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          // ignore: prefer_const_constructors
          return AlertDialog(
            title: Center(
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
                  child: Text('las contraseñas no coinciden!',
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
