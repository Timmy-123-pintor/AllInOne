//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './passed.dart';
import 'package:timmy/navBar.dart';

void main() {
  runApp(const Input());
}

class Input extends StatelessWidget {
  const Input({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pass Data',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.name,
              onChanged: (text) {
                value = text;
              },
              decoration: const InputDecoration(
                labelText: "Input Something",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.input),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Passed(value: value)),
                  );
                },
                child: Text("Send"))
          ],
        ),
      ),
    );
  }
}
