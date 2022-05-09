// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(Notepad());
}

class Notepad extends StatelessWidget {
  const Notepad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notepad",
      home: TextField(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextField extends StatefulWidget {
  const TextField({Key? key}) : super(key: key);

  @override
  State<TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("메모장"),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          TextButton.icon(
            style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 10, 300, 10)),
            icon: Icon(Icons.add),
            label: Text("새로 만들기"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SecondPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("입력"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text("저장하기"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("다른 이름으로 저장하기"),
              ),
            ],
          ),
          const TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
  ),
        ],
      ),
    );
  }
}
