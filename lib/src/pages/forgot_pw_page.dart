import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Correo enviado exitosamente'),
            content: Text(
                'Verifica tu correo para restablecer tu contraseña y logeate nuevamente desde el inicio'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Error'),
            content: Text(
                'El correo no es valido, favor de verificar e intente nuevamente'),
            /* content: Text(e.message.toString()), */
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        title: const Text('Recuperar tu contraseña'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Ingreta tu correo para contiuar con la recuperación.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          const SizedBox(height: 10),
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
                      border: InputBorder.none, hintText: 'Correo Electronico'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          MaterialButton(
            onPressed: passwordReset,
            // ignore: sort_child_properties_last
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: const Text('Restablecer contraseña',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
              ),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
