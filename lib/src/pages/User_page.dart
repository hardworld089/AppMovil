import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login/src/pages/valora_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 39, 39),
      appBar: AppBar(
        title: const Text('Califica Nuestra app'),
        backgroundColor: const Color.fromARGB(255, 41, 39, 39),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(user.photoURL ??
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  user.displayName ?? 'usuario',
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  user.email!,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Colors.white,
                ),
                const Text(
                  'Califica Nuestra APP',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                _materialProgres(),
                ElevatedButton(
                  child: const Text("Enviar Estrellas"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ValoraPage()),
                    );
                  },
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  _materialProgres() {
    return Column(
      children: [
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          // ignore: prefer_const_constructors
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    );
  }

  _alert() {
    return const AlertDialog(
      title: Text('Tu calificación se a registrado'),
      content: Text('Gracias por tu valoracion'),
    );
  }
}
