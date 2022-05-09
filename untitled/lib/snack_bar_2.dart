// ignore_for_file: deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

//const url = 'https://google.com';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp()({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "snack_bar",
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Snack_bar(),
    );
  }
}

class Snack_bar extends StatelessWidget {
  const Snack_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack bar.ver2"),
        centerTitle: true,
      ),
      body: Button_to_second(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("좋아요. 혹시 추가 설명이 필요하나요"),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                label: "설명",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Third_page(),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class Button_to_second extends StatelessWidget {
  const Button_to_second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("2번째 페이지로 가기"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Second_page(),
            ),
          );
        },
      ),
    );
  }
}

class Second_page extends StatelessWidget {
  const Second_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: const Text(
          "새로운 페이지입니다",
          style: TextStyle(color: Colors.blue, fontSize: 20.0),
        ),
      ),
    );
  }
}

class Third_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Third page"),
        ),
        body: Builder(
          builder: (context) {
            return thrd_snack();
          },
        ),
      ),
    );
  }
}

class thrd_snack extends StatelessWidget {
  const thrd_snack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "추가 설명이 필요하시군요",
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
          ),
          ElevatedButton(
            onPressed: () {
              //await launch(url, forceWebView: true, forceSafariVC: true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("연결하는 중"),
                  duration: Duration(seconds: 5),
                ),
              );
            },
            child: Text("홈페이지로 가기"),
          ),
        ],
      ),
    );
  }
}

// 패키지 ...
// 브라우저를 열 링크

// 인앱 브라우저 실행
