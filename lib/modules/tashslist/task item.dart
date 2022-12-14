import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/shared/styles/MyTheme.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyThemeData.primeycolor,
              borderRadius: BorderRadius.circular(50),
            ),
            height: 80,
            width: 4,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task Title",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: MyThemeData.primeycolor),
                ),
                Text("Task Description",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontSize: 10, color: MyThemeData.colorblack)),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: MyThemeData.primeycolor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.done,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
