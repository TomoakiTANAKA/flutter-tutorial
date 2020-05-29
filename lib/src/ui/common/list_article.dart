import 'package:flutter/material.dart';

/**
 * 記事
 */
class ListArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network('https://d17uhz2kob7es4.cloudfront.net/images/pictures/images/000/005/603/pixta_25210746_S-thumb_80.jpg?1512371089'),
        Text('風呂釜洗浄剤のおすすめ7選！1つ穴や2つ穴の汚れがごっそり取れる'),
      ]
    );
  }
}
