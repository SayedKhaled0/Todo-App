import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../modules/settings/settings.dart';
import '../modules/tashslist/tasks list.dart';
import '../providers/my provider.dart';
import '../shared/styles/MyTheme.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
            side: BorderSide(
          color: Colors.white,
          width: 4,
        )),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  size: 30,
                ),
                label: AppLocalizations.of(context)!.taskslist,
                backgroundColor: provider.dropdownvalue2 == ThemeMode.light
                    ? MyThemeData.primeycolor
                    : MyThemeData.darkprimery),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: AppLocalizations.of(context)!.settings,
                backgroundColor: provider.dropdownvalue2 == ThemeMode.light
                    ? MyThemeData.primeycolor
                    : MyThemeData.darkprimery),
          ],
        ),
      ),
      body: tabs[currentIndex],
    );
  }

  List<Widget> tabs = [
    TasksTap(),
    SettingsTap(),
  ];
}
