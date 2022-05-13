import 'package:flutter/material.dart';
import 'notepad/notepad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Notepad",
      home: Note(),
      debugShowCheckedModeBanner: false,
    );
  }
}
