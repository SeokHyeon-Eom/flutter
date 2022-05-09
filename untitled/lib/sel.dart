import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.red,
                child: Text("Navigator"),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                }),
            RaisedButton(
                color: Colors.red,
                child: Text("Introduce"),
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                }),
          ],
        ),
      ),
    );
  }
}
