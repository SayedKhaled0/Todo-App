import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/my provider.dart';
import '../../shared/styles/MyTheme.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeLanguage("en");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: provider.languageCode == "en"
                        ? MyThemeData.primeycolor
                        : MyThemeData.primeycolor),
              ),
              Icon(Icons.done,
                  size: 30,
                  color: provider.languageCode == "en"
                      ? MyThemeData.colorgreen
                      : MyThemeData.primeycolor)
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            provider.changeLanguage("ar");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: provider.languageCode == "ar"
                        ? MyThemeData.primeycolor
                        : MyThemeData.primeycolor),
              ),
              Icon(
                Icons.done,
                size: 30,
                color: provider.languageCode == "ar"
                    ? MyThemeData.colorgreen
                    : MyThemeData.primeycolor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
