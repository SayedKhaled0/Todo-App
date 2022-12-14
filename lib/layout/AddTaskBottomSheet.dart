import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/shared/network/local/firebse.dart';
import 'package:todoapp/shared/styles/MyTheme.dart';

import '../home layout provider/home provider.dart';
import '../models/tasks.dart';

class AddTaskBottomSheet extends StatelessWidget {
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();

  DateTime selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Homeprovider>(context);
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Add New Task",
                    textAlign: TextAlign.center, style: Theme
                        .of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(
                        color: MyThemeData.colorblack
                    )),
              ),
              SizedBox(height: 10,),
              Form(
                  key: provider.formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: titleController,
                        validator: (text) {
                          if (text == "") {
                            return "please enter title";
                          }
                          return null;
                        },
                        maxLines: 2,
                        decoration: InputDecoration(
                            label: Text("title"),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyThemeData.primeycolor,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyThemeData.primeycolor,
                                )
                            )
                        ),

                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: descriptionController,
                        validator: (text) {
                          if (text == "") {
                            return "please enter description";
                          }
                          return null;
                        },
                        maxLines: 2,
                        decoration: InputDecoration(
                            label: Text("Description"),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyThemeData.primeycolor,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyThemeData.primeycolor,
                                )
                            )
                        ),

                      )
                    ],
                  )),
              SizedBox(height: 20,),
              Text("Select Date"
                  , style: Theme
                      .of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(
                      color: MyThemeData.colorblack
                  )
              ),
              InkWell(
                onTap: () {
                  provider.ShowPicker(context);
                },
                child: Text(

                    "${provider.selectedDate.day}/${provider.selectedDate
                        .month}/${provider.selectedDate.year}",
                    textAlign: TextAlign.center, style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: MyThemeData.primeycolor)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                if (provider.formkey.currentState!.validate()) {
                  TaskData task =
                  TaskData(title: titleController.text,
                      description: descriptionController.text,
                      data: selectedDate.microsecondsSinceEpoch);
                  addTasekFirebaseFirestore(task);
                }
              },
                  child: Text("Add Task"))
            ]
        ),
      ),
    );
  }

}
