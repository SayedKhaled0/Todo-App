import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/modules/tashslist/task%20item.dart';

import '../../shared/styles/MyTheme.dart';

class TasksTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: MyThemeData.primeycolor,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: MyThemeData.primeycolor,
            dotsColor: Colors.white,
            selectableDayPredicate: (date) => true,
            locale: 'en_ISO',
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (c, index) {
                  return TaskItem();
                }),
          )
        ],
      ),
    );
  }
}
