import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/shared/styles/MyTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/my provider.dart';

class SettingsTap extends StatelessWidget {
  final List<String> language = ["English", "Arabic"];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: provider.dropdownvalue2 == ThemeMode.light
                        ? MyThemeData.colorblack
                        : Colors.white,
                  )),
        ),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: MyThemeData.primeycolor)),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: DropdownButton(
                value: provider.dropdownvalue == "en"
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic,
                icon: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .68),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 25,
                    color: MyThemeData.primeycolor,
                  ),
                ),
                items: [
                  AppLocalizations.of(context)!.english,
                  AppLocalizations.of(context)!.arabic,
                ].map((String item) {
                  return DropdownMenuItem(
                      value: item,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          item,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color: provider.dropdownvalue == "en"
                                      ? MyThemeData.primeycolor
                                      : MyThemeData.primeycolor),
                        ),
                      ));
                }).toList(),
                onChanged: (String? newvalue) {
                  (newvalue == AppLocalizations.of(context)!.english)
                      ? provider.changeLanguage("en")
                      : provider.changeLanguage("ar");
                }),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(AppLocalizations.of(context)!.mode,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: provider.dropdownvalue2 == ThemeMode.light
                        ? MyThemeData.colorblack
                        : Colors.white,
                  )),
        ),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: MyThemeData.primeycolor)),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: DropdownButton(
                value: provider.dropdownvalue2 == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                icon: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .72),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 25,
                    color: MyThemeData.primeycolor,
                  ),
                ),
                items: [
                  AppLocalizations.of(context)!.dark,
                  AppLocalizations.of(context)!.light,
                ].map((String item) {
                  return DropdownMenuItem(
                      value: item,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          item,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color:
                                      provider.dropdownvalue2 == ThemeMode.light
                                          ? MyThemeData.primeycolor
                                          : MyThemeData.primeycolor),
                        ),
                      ));
                }).toList(),
                onChanged: (String? newvalue) {
                  (newvalue == AppLocalizations.of(context)!.light)
                      ? provider.changeTheme(ThemeMode.light)
                      : provider.changeTheme(ThemeMode.dark);
                }),
          ),
        )
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
//
// import '../../providers/my provider.dart';
// import '../../shared/styles/MyTheme.dart';
// import 'LanguageBottomSheet.dart';
// import 'ThemeBottomSheet.dart';
//
// class SettingsTap extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<MyProvider>(context);
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//         Text(AppLocalizations.of(context)!.language,
//             style: Theme.of(context).textTheme.headline1?.copyWith(
//                   color: provider.mode == ThemeMode.light
//                       ? MyThemeData.colorblack
//                       : Colors.white,
//                 )),
//         SizedBox(
//           height: 10,
//         ),
//         InkWell(
//           onTap: () {
//             showLanguageBottomSheet(context);
//           },
//           child: Container(
//             padding: EdgeInsets.all(12),
//             decoration: BoxDecoration(
//                 border: Border.all(
//                     color: provider.mode == ThemeMode.light
//                         ? MyThemeData.primeycolor
//                         : MyThemeData.primeycolor),
//                 borderRadius: BorderRadius.circular(14)),
//             child: Text(
//                 provider.languageCode == "en"
//                     ? AppLocalizations.of(context)!.english
//                     : AppLocalizations.of(context)!.arabic,
//                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                       color: MyThemeData.primeycolor,
//                     )),
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Text(AppLocalizations.of(context)!.mode,
//             style: Theme.of(context).textTheme.headline1?.copyWith(
//                   color: provider.mode == ThemeMode.light
//                       ? MyThemeData.colorblack
//                       : Colors.white,
//                 )),
//         SizedBox(
//           height: 10,
//         ),
//         InkWell(
//           onTap: () {
//             showThemeBottomSheet(context);
//           },
//           child: Container(
//             padding: EdgeInsets.all(12),
//             decoration: BoxDecoration(
//                 border: Border.all(
//                     color: provider.mode == ThemeMode.light
//                         ? MyThemeData.primeycolor
//                         : MyThemeData.primeycolor),
//                 borderRadius: BorderRadius.circular(14)),
//             child: Text(
//                 provider.mode == ThemeMode.light
//                     ? AppLocalizations.of(context)!.light
//                     : AppLocalizations.of(context)!.dark,
//                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                       color: MyThemeData.primeycolor,
//                     )),
//           ),
//         ),
//       ]),
//     );
//   }
//
//   void showLanguageBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return LanguageBottomSheet();
//         });
//   }
//
//   void showThemeBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return ThemeBottomSheet();
//         });
//   }
// }
