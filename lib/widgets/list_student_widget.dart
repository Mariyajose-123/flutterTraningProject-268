import 'package:flutter/material.dart';
import 'package:initial_flutter_project/db/functions/db_functions.dart';
import 'package:initial_flutter_project/db/model/data_model.dart';
import 'package:initial_flutter_project/widgets/edit_student_widget.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext context, List<StudentModel> studentList,
          Widget? child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = studentList[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EditStudentWidget(student: data),
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      if (data.id != null) {
                        deleteStudent(data.id!);
                      } else {
                        print('Student id is null, unable to delete');
                      }
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: studentList.length,
        );
      },
    );
  }
}
