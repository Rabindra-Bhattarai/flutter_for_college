import 'package:flutter/material.dart';
import '../models/employee_model.dart';

class MyEmployeeListView extends StatelessWidget {
  final List<EmployeeModel> employees;

  const MyEmployeeListView({super.key, required this.employees});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: employees.length,
      itemBuilder: (context, index) {
        final emp = employees[index];
        return Card(
          child: ListTile(
            leading: const Icon(Icons.badge),
            title: Text(emp.fullName),
            subtitle: Text("ID: ${emp.id}\nGender: ${emp.gender}, Dept: ${emp.department}"),
            isThreeLine: true,

          ),

        );
      },
    );
  }
}

