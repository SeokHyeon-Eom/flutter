// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/introduce.dart';
import 'package:untitled/navigator.dart';
import 'sel.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SelectPage(),
        '/b': (context) => Introduce(),
        '/c': (context) => FirstPage(),
      },
    );
  }
}
