// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:io';

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
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
                            const Text('제목을 입력해주세요'),
                            SizedBox(
                              width: 5,
                            ),
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
