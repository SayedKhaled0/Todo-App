import 'package:intl/intl.dart';

class TaskData {
  String id;
  String title;
  String description;
  int data;
  bool isdone;

  TaskData(
      {this.id = "",
      required this.title,
      required this.description,
      required this.data,
      this.isdone = false});

  Map<String, dynamic> toJason() {
    return {
      "id": id,
      "title": title,
      "data": data,
      "description": description,
      "isdone": isdone
    };
  }

  TaskData.fromJson(Map<String, dynamic> json)
      : this(
            id: json["id"],
            title: json["title"],
            description: json["description"],
            data: json["data"],
            isdone: json["isdone"]);
}
