import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => new _ArticleState();
}

class _ArticleState extends State<Article> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("記事のタイトル"),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://cojicaji.jp',
          // javascriptの有効化
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ), // body
    );
  }
}
