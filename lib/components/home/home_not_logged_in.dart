
// ---------
// ホーム画面
// ---------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNotLoggedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Placeholder(
              fallbackHeight: 480,
              color: Colors.redAccent,
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/signup");
                },
                child: Text("新規登録"),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/login");
                },
                child: Text("ログイン"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center buildCenter(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        child: const Text("Launch Next Screen"),
        onPressed: () {
          // その他の画面へ
          Navigator.of(context).pushNamed("/bookmark");
        },
      ),

    );
  }
}
