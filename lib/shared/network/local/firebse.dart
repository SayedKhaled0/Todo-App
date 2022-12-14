import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../models/tasks.dart';

CollectionReference<TaskData> getTasksCollection() {
  return FirebaseFirestore.instance.collection("tasks").withConverter<TaskData>(
      fromFirestore: (snapshot, sp) => TaskData.fromJson(snapshot.data()!),
      toFirestore: (task, sp) => task.toJason());
}

Future<void> addTasekFirebaseFirestore(TaskData taskData) {
  var collection = getTasksCollection();
  var docref = collection.doc();
  taskData.id = docref.id;
  return docref.set(taskData);
}
