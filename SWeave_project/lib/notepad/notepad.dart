// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'text_input_page.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton.icon(
              icon: Icon(Icons.add),
              label: Text("새로 만들기"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TextInput(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
