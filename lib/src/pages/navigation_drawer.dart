import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/src/pages/User_page.dart';
import 'package:login/src/pages/hardwere_page.dart';
import 'package:login/src/pages/historia_page.dart';
import 'package:login/src/pages/home_page.dart';

import 'cuanto_sabes.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            onDetailsPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const UserPage(),
              ));
            },
            currentAccountPicture: CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage(user.photoURL ??
                  "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png"),
            ),
            accountName: Text(
              user.displayName ?? user.displayName ?? "Usuario",
              style: const TextStyle(fontSize: 25),
            ),
            accountEmail: Text(user.email!),
          ),
          builMenuItems(context)
        ],
      ),
    );
  }
}

builMenuItems(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
            leading: const Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.blue,
            ),
            title: const Text('Home'),
            onTap: () => Navigator.pop(context)),
        ListTile(
          leading: const Icon(
            Icons.computer,
            size: 30,
            color: Colors.blue,
          ),
          title: Text('Aprende sobre Hardwere'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HardwerePage()),
            );
          },
        ),
        /* const ListTile(
          leading: Icon(
            Icons.amp_stories,
            size: 30,
            color: Colors.blue,
          ),
          title: Text('Aprende sobre software'),
          /* onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CuantoPage()),
            );
          }, */
        ), */
        ListTile(
          leading: const Icon(
            Icons.analytics,
            size: 30,
            color: Colors.blue,
          ),
          title: const Text('Probar conocimientos'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CuantoPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.history,
            size: 30,
            color: Colors.blue,
          ),
          title: const Text('Historia de las computadoras'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HistoriaPage()),
            );
          },
        ),
        const Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            size: 30,
            color: Colors.red,
          ),
          title: const Text(
            'Cerrar Sesion',
            style: TextStyle(color: Colors.red, fontSize: 15),
          ),
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ],
    ),
  );
}
