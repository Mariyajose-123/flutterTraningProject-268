import 'package:flutter/material.dart';
import 'package:initial_flutter_project/db/functions/db_functions.dart';
import 'package:initial_flutter_project/db/model/data_model.dart';

class EditStudentWidget extends StatelessWidget {
  final StudentModel student;

  const EditStudentWidget({Key? key, required this.student});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
        TextEditingController(text: student.name);
    final TextEditingController ageController =
        TextEditingController(text: student.age);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: ageController,
              decoration: const InputDecoration(
                labelText: 'Age',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final updatedName = nameController.text.trim();
                final updatedAge = ageController.text.trim();
                if (updatedName.isNotEmpty && updatedAge.isNotEmpty) {
                  final updatedStudent =
                      student.copyWith(name: updatedName, age: updatedAge);
                  updateStudent(updatedStudent);
                  Navigator.pop(context); // Go back to the list after update
                } else {
                  // Show error or handle empty fields
                }
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
