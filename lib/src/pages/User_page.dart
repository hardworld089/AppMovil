import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 39, 39),
      appBar: AppBar(
        title: const Text('Tu Progreso'),
        backgroundColor: Color.fromARGB(255, 41, 39, 39),
      ),
      body: Center(
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
              height: 5,
            ),
            const Divider(
              color: Colors.white,
            ),
            _materialProgres()
          ]),
        ),
      ),
    );
  }

  _materialProgres() {
    return Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ListTile(
              leading: Icon(
                Icons.home_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(
                Icons.computer,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Aprende sobre Hardwere'),
              /* onTap: () {}, */
            ),
            const ListTile(
              leading: Icon(
                Icons.amp_stories,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Aprende sobre software'),
              /* onTap: () {}, */
            ),
            const ListTile(
              leading: Icon(
                Icons.analytics,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Probar conocimientos'),
              /* onTap: () {}, */
            )
          ],
        ));
  }
}
