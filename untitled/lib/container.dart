import 'package:flutter/material.dart';
import 'package:untitled/snack_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "container",
      home: Container_page(),
    );
  }
}

class Container_page extends StatelessWidget {
  const Container_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10,
          ),
          padding: EdgeInsets.all(25),
          child: Text("CONTAINER"),
        ),
      ),
    );
  }
}
