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
      home: Note(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
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
  final myController = TextEditingController();

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
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(content: Text(myController.text));
                    }),
                child: Text("저장하기"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("다른 이름으로 저장하기"),
              ),
            ],
          ),
          TextField(
            controller: myController,
          ),
        ],
      ),
    );
  }
}
