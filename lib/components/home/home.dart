
// ---------
// ホーム画面
// ---------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("Home"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text("Launch Next Screen"),
          onPressed: () {
            // その他の画面へ
            Navigator.of(context).pushNamed("/bookmark");
          },
        ),
      ),
    );
  }
}
