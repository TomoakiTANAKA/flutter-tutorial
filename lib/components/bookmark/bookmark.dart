import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../splash/splash.dart';

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => new _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("Bookmark"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            const SizedBox(height: 24.0),
            new RaisedButton(
              child: const Text("Launch Bookmark Screen"),
              onPressed: () {
                // その他の画面へ
                Navigator.of(context).pushNamed("/bookmark");
              },
            ),
            const SizedBox(height: 24.0),
            new RaisedButton(
              child: const Text("Home"),
              onPressed: () {
                // ホーム画面へ戻る　
                Navigator.popUntil(context, ModalRoute.withName("/home"));
              },
            ),
            const SizedBox(height: 24.0),
            new RaisedButton(
              child: const Text("Logout"),
              onPressed: () {
                // 確認ダイアログ表示
                showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return new AlertDialog(
                      content: const Text('Do you want logout?'),
                      actions: <Widget>[
                        new FlatButton(
                          child: const Text('No'),
                          onPressed: () {
                            // 引数をfalseでダイアログ閉じる
                            Navigator.of(context).pop(false);
                          },
                        ),
                        new FlatButton(
                          child: const Text('Yes'),
                          onPressed: () {
                            // 引数をtrueでダイアログ閉じる
                            Navigator.of(context).pop(true);
                          },
                        ),
                      ],
                    );
                  },
                ).then<void>((aBool) {
                  // ダイアログがYESで閉じられたら...
                  if (aBool) {
                    // 画面をすべて除いてスプラッシュを表示
                    Navigator.pushAndRemoveUntil(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Splash()),
                            (_) => false);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
