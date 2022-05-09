import 'package:flutter/material.dart';
import 'package:untitled/snack_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row & Column",
      home: Row_column(),
    );
  }
}

class Row_column extends StatelessWidget {
  const Row_column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min, 컨테이더가 찾이하는 범위를 최소화
            // verticalDirection: VerticalDirection.up,: 아래서부터 위로 정렬하는 코드
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,: 맨위 중간 아래로 정렬
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,: 모든 위아래가 같은 정렬
            children: [
              Container(
                color: Colors.red,
                child: Text("Container 1"),
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.white,
                child: Text("Container 2"),
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Second_page extends StatelessWidget {
  const Second_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.end, // 모든 요소들이 왼쪽 끝에 정렬
          crossAxisAlignment: CrossAxisAlignment.stretch, // 화면 끝까지 길이를 정함
          children: [
            Container(
              color: Colors.red,
              child: Text("Container 1"),
              width: 100,
              height: 100,
            ),
            const SizedBox(
              width: 30.0,
            ),
            Container(
              color: Colors.white,
              child: Text("Container 2"),
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: ElevatedButton(
                child: const Text("1번째 페이지로 가기"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Row_column(),
                    ),
                  );
                },
              ),
            ),
            /*Container(
              width: double.infinity,
            )*/ // 끝으로 정렬하는 방법
          ],
        ),
      ),
    );
  }
}
