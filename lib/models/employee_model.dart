import 'package:uuid/uuid.dart';

class EmployeeModel {
  final String id;
  final String fullName;
  final String gender;
  final String department;

  EmployeeModel({
    required this.fullName,
    required this.gender,
    required this.department,
  }) : id = const Uuid().v4(); // auto-generate unique ID
}