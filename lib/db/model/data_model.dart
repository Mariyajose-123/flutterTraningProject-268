import 'package:hive_flutter/adapters.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  StudentModel({required this.name, required this.age, this.id});

  StudentModel copyWith({required String name, required String age, int? id}) {
    return StudentModel(
      name: name,
      age: age,
      id: id ?? this.id, // Use the current id if not provided
    );
  }
}
