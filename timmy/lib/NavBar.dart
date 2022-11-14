//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timmy/homepage.dart';
import 'package:timmy/main.dart';
import 'package:timmy/screens/screenA.dart';
import 'data_pass/input.dart';
import 'pages/home_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            'Timmy John T. Pintor',
            style: TextStyle(color: Colors.white),
          ),
          accountEmail: Text(
            'timmypintor@gmail.com',
            style: TextStyle(color: Colors.white),
          ),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Homepage'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyHomepage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.navigation),
          title: Text('Navigation'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NewScreen1()));
          },
        ),
        ListTile(
          leading: Icon(Icons.double_arrow),
          title: Text('Passing Data'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Input()));
          },
        ),
        ListTile(
          leading: Icon(Icons.list_alt),
          title: Text('ToDO List'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.login_outlined),
          title: Text('Logout'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const LoginUI()));
          },
        ),
      ],
    ));
  }
}
