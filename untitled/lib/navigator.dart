// ignore_for_file: prefer_const_constructors, deprecated_member_use

import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "NEW APP", home: const FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(
        child: RaisedButton(
          child: Text("GO to seccond paeg"),
          onPressed: () {
            Navigator.push(
              // context위에 stack으로 쌓인다.
              context2,
              MaterialPageRoute(
                builder: (_) => SecondPage(),
                // (_) 사용하지 않는 값
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: RaisedButton(
          child: Text("GO to First paeg"),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
