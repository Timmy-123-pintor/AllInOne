//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timmy/navBar.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  Container MyNews(String imageVal, String heading, String subHeading) {
    return Container(
      width: 390,
      child: Card(
        child: Wrap(children: <Widget>[
          Image.asset(imageVal),
          ListTile(
            title: Text(heading),
            subtitle: Text(subHeading),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: Scaffold(
          drawer: const NavBar(),
          appBar: AppBar(
            title: const Text(
              " Homepage ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(248, 255, 255, 255),
              ),
            ),
          ),
          body: SafeArea(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Search the Guru",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "What's New?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 320,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                MyNews("assets/images/sale.png", "11.11 SALE!",
                    "Enjoy Shopping Now!"),
                MyNews("assets/images/sale.png", "11.11 SALE!",
                    "Enjoy Shopping Now!"),
                MyNews("assets/images/sale.png", "Take a break",
                    "Enjoy the beauty of of this"),
                MyNews("assets/images/sale.png", "11.11 SALE!",
                    "Enjoy Shopping Now!"),
                MyNews("assets/images/sale.png", "11.11 SALE!",
                    "Enjoy Shopping Now!"),
                MyNews("assets/images/sale.png", "11.11 SALE!",
                    "Enjoy Shopping Now!"),
                MyNews("assets/images/sale.png", "11.11 SALE!",
                    "Enjoy Shopping Now!"),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Super Mura!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 250,
                child:
                    ListView(scrollDirection: Axis.vertical, children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Wrap(children: <Widget>[
                        Image.network(
                            "https://n1.sdlcdn.com/imgs/g/s/v/Boltt-Xfit-Running-Shoes-Black-SDL789843251-6-4230e.jpg"),
                        ListTile(
                          title: Text("\$ 69"),
                          subtitle: Text("Black Shoes"),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Wrap(children: <Widget>[
                        Image.network(
                            "https://n1.sdlcdn.com/imgs/g/s/v/Boltt-Xfit-Running-Shoes-Black-SDL789843251-6-4230e.jpg"),
                        ListTile(
                          title: Text("\$ 69"),
                          subtitle: Text("Black Shoes"),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Wrap(children: <Widget>[
                        Image.network(
                            "https://n1.sdlcdn.com/imgs/g/s/v/Boltt-Xfit-Running-Shoes-Black-SDL789843251-6-4230e.jpg"),
                        ListTile(
                          title: Text("\$ 69"),
                          subtitle: Text("Black Shoes"),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Wrap(children: <Widget>[
                        Image.network(
                            "https://n1.sdlcdn.com/imgs/g/s/v/Boltt-Xfit-Running-Shoes-Black-SDL789843251-6-4230e.jpg"),
                        ListTile(
                          title: Text("\$ 69"),
                          subtitle: Text("Black Shoes"),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Wrap(children: <Widget>[
                        Image.network(
                            "https://n1.sdlcdn.com/imgs/g/s/v/Boltt-Xfit-Running-Shoes-Black-SDL789843251-6-4230e.jpg"),
                        ListTile(
                          title: Text("\$ 69"),
                          subtitle: Text("Black Shoes"),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Wrap(children: <Widget>[
                        Image.network(
                            "https://n1.sdlcdn.com/imgs/g/s/v/Boltt-Xfit-Running-Shoes-Black-SDL789843251-6-4230e.jpg"),
                        ListTile(
                          title: Text("\$ 69"),
                          subtitle: Text("Black Shoes"),
                        ),
                      ]),
                    ),
                  ),
                ]))
          ])),
        ));
  }
}
