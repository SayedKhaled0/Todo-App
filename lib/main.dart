import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/providers/my%20provider.dart';

import 'package:todoapp/shared/styles/MyTheme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'layout/home layout.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MyProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.languageCode),
      initialRoute: HomeLayout.routeName,
      routes: {HomeLayout.routeName: (_) => HomeLayout()},
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.light,
      darkTheme: MyThemeData.Dark,
      themeMode: provider.mode,
    );
  }
}
