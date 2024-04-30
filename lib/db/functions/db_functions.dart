import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:initial_flutter_project/db/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

Future<void> addStudent(StudentModel value) async {
  // studentListNotifier.value.add(value);
  final studentDB =
      await Hive.openBox<StudentModel>('student_db'); //open database
  final _id = await studentDB.add(value); // addtoDataBase
  value.id = _id;
  studentListNotifier.value
      .add(value); // add data base data to the studentListNotifier
  studentListNotifier.notifyListeners(); // notifi the listerners
  print(value.toString());
}

Future<void> getAllStudents() async {
  //To get the data from database
  final studentDB =
      await Hive.openBox<StudentModel>('student_db'); // call from dataBase
  studentListNotifier.value.clear(); //clear already existing notifier value

  studentListNotifier.value
      .addAll(studentDB.values); // add data in the database to the notifier
  studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(int id) async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.delete(id);
  getAllStudents();
}

Future<void> updateStudent(StudentModel updatedStudent) async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.put(
      updatedStudent.id!, updatedStudent); // Assuming id is not null
  getAllStudents(); // Refresh the student list after updating
}
