// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:io';

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
  readText() async {
    String dic = await File('./lib/text_folder/flutter.txt').readAsString();
    print(dic);
  }

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
                readText();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SecondPage(),
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

class SecondPage extends StatelessWidget {
  var myController = TextEditingController();
  var saveName = TextEditingController();

  save() async {
    await File('./lib/text_folder/${saveName.text}.txt')
        .writeAsString(myController.text);
  }

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
                    return AlertDialog(
                      title: Text("저장하기"),
                      content: SizedBox(
                        height: 50,
                        child: Column(
                          children: [
                            TextField(
                              controller: saveName,
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('제목을 입력해주세요'),
                            ElevatedButton(
                              child: Text("저장"),
                              onPressed: () {
                                if (saveName.text != "") {
                                  save();
                                  Navigator.pop(context);
                                }
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                              child: Text("취소"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
                child: Text("저장하기"),
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
