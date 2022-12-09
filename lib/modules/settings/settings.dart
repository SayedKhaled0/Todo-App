import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/my provider.dart';
import '../../shared/styles/MyTheme.dart';
import 'LanguageBottomSheet.dart';
import 'ThemeBottomSheet.dart';

class SettingsTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: provider.mode == ThemeMode.light
                      ? MyThemeData.colorblack
                      : Colors.white,
                )),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet(context);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                border: Border.all(
                    color: provider.mode == ThemeMode.light
                        ? MyThemeData.primeycolor
                        : MyThemeData.primeycolor),
                borderRadius: BorderRadius.circular(14)),
            child: Text(
                provider.languageCode == "en"
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: MyThemeData.primeycolor,
                    )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: provider.mode == ThemeMode.light
                      ? MyThemeData.colorblack
                      : Colors.white,
                )),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            showThemeBottomSheet(context);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                border: Border.all(
                    color: provider.mode == ThemeMode.light
                        ? MyThemeData.primeycolor
                        : MyThemeData.primeycolor),
                borderRadius: BorderRadius.circular(14)),
            child: Text(
                provider.mode == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: MyThemeData.primeycolor,
                    )),
          ),
        ),
      ]),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeBottomSheet();
        });
  }
}
