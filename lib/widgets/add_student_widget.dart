import 'package:flutter/material.dart';
import 'package:initial_flutter_project/db/functions/db_functions.dart';
import 'package:initial_flutter_project/db/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _ageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "age",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                onAddStudentButtonClicked();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Student'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name $_age');

    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
