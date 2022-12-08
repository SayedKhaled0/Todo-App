import 'package:flutter/material.dart';
import 'package:todoapp/shared/styles/MyTheme.dart';

import 'layout/home layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeLayout.routeName,
      routes: {HomeLayout.routeName: (_) => HomeLayout()},
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.light,
      darkTheme: MyThemeData.Dark,
      themeMode: ThemeMode.light,
    );
  }
}
