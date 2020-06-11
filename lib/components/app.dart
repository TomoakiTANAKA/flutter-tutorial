import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'login/login.dart';
import 'splash/splash.dart';
import 'bookmark/bookmark.dart';

MaterialApp createMaterialApp() {
  return new MaterialApp(
    title: 'Navigation with Routes',
    routes: <String, WidgetBuilder>{
      '/': (_) => new Splash(),
      '/login': (_) => new Login(),
      '/home': (_) => new Home(),
      '/bookmark': (_) => new Bookmark(),
    },
  );
}
