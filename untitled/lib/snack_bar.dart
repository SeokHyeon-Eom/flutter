// ignore_for_file: camel_case_types, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      color: Colors.blue,
      home: Snack_bar(),
    );
  }
}

class Snack_bar extends StatelessWidget {
  //const Snack_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack bar"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: FlatButton(
              child: const Text(
                "Show me",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.brown,
              onPressed: () {
                Scaffold.of(ctx).showSnackBar(
                  SnackBar(
                    content: Text("hellow"),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

/*
빌더를 만들지 않고 만드는 방법은 새로운 클래스를 만들어서 한다.
class My_snack_bar extends StatelessWidget {
  //const My_snack_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text("Show me"),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Hellow",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(microseconds: 1000),
            ),
          );
        },
      ),
    );
  }
}
*/

// of는 context에서 위로 올라가면서 가장 가까운 위젯을 반환하라.