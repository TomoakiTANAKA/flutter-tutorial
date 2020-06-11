import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("SignUp"),
      ),
      body: new Center(
        child: new Form(
          child: new SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 24.0),
                new TextFormField(
                  decoration: const InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'User Id',
                  ),
                ),
                const SizedBox(height: 24.0),
                new TextFormField(
                  maxLength: 8,
                  decoration: new InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 24.0),
                new Center(
                  child: new RaisedButton(
                    child: const Text('新規登録'),
                    onPressed: () {
                      // TODO: ログイン処理
                      // ホーム画面へ
                      Navigator.of(context).pushReplacementNamed("/home");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
