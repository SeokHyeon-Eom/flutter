// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyName extends StatelessWidget {
  const MyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Text(
          "NAME",
          style: TextStyle(color: Colors.white, letterSpacing: 2.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "SeokHyeon",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "FLUTTER POWER LEVEL",
          style: TextStyle(color: Colors.white, letterSpacing: 2.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "0.01",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}

class RowData extends StatelessWidget {
  const RowData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CheckBox("University: Kookmin"),
            CheckBox("Department: C.S"),
            CheckBox("Class No: 20191623"),
            CheckBox("Hobby: execise,game"),
          ],
        ),
        SizedBox(
          width: 30.0,
        ),
        Iu(),
      ],
    );
  }
}

// ignore: must_be_immutable
class CheckBox extends StatelessWidget {
  // Check_box({Key? key}) : super(key: key);

  String res = "";

  // ignore: use_key_in_widget_constructors
  CheckBox(String res) {
    // ignore: prefer_initializing_formals
    this.res = res;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Icon(Icons.check_circle_outline),
        Text(
          res,
          style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
        ),
      ],
    );
  }
}

class Iu extends StatelessWidget {
  const Iu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/IU.jpg'),
            radius: 60.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "My favorite Singer:",
          style: TextStyle(
              fontSize: 10.0, color: Colors.white, letterSpacing: 1.0),
        ),
        Text(
          "IU",
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, letterSpacing: 20.0),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Introduce",
      home: Introduce(),
    );
  }
}

class Introduce extends StatelessWidget {
  const Introduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My introduce"),
        backgroundColor: Colors.purple[700],
        elevation: 0.0,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/eom.jpg'),
              radius: 70.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.black,
            thickness: 2.0,
            indent: 40.0,
            endIndent: 40.0,
          ),
          // My_padding(),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                MyName(),
                RowData(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
