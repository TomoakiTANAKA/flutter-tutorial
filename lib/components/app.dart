import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup/signup.dart';

import 'home/home.dart';
import 'home/home_not_logged_in.dart';
import 'login/login.dart';
import 'splash/splash.dart';
import 'bookmark/bookmark.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Routes',
//      home: MyStatefulWidget(),
      home: HomeNotLoggedIn(),
      routes: <String, WidgetBuilder>{
//        '/': (_) => new Splash(), // homeプロパティを使うときは使えない
        '/login': (_) => new Login(),
        '/signup': (_) => new SignUp(),
        '/home': (_) => new Home(),
        '/bookmark': (_) => new Bookmark(),
      },
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      // bottomNavigation
      // ナビの設定 + 今のindexとタップしたときのインデックス変更の関数、などをもつ
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('さがす'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('お気に入り'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      // ignore: missing_return
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                // 表示したい画面のWidget
                child: SafeArea(
                  child: Home()
                ),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SafeArea(
                  child: Bookmark(),
                ),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                // navigationBarを定義することもできる
                navigationBar: CupertinoNavigationBar(
                  leading: Icon(Icons.book),            // ヘッダーの左アイコン
                  middle: Text("お気に入り"),             // 中央テキスト
                  trailing: Icon(Icons.account_circle), // 右アイコン
                ),
                // 表示したい画面のWidget
                child: SafeArea(
                  child: Bookmark(),
                ),
              );
            });
        }

      },
    );
  }
}
