import 'package:flutter/material.dart';

import '../modules/settings/settings.dart';
import '../modules/tashslist/tasks list.dart';

class Homeprovider extends ChangeNotifier {
  DateTime selectedDate = DateTime.now();
  GlobalKey<FormState>formkey = GlobalKey<FormState>();


  void ShowPicker(BuildContext context) async {
    DateTime? chosenDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365),
      ),
    );
    if (chosenDate == null) return;
    selectedDate = chosenDate;
    notifyListeners();
  }

}
