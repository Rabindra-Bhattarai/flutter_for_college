import 'package:flutter/material.dart';
import '../models/employee_model.dart';
import '../widgets/my_dropdown.dart';
import '../widgets/my_elevated_icon_button.dart';
import '../widgets/my_employee_listview.dart';

class EmployeeDetailsScreen extends StatefulWidget {
  const EmployeeDetailsScreen({super.key});

  @override
  State<EmployeeDetailsScreen> createState() => _EmployeeDetailsScreenState();
}

class _EmployeeDetailsScreenState extends State<EmployeeDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();

  String? _selectedGender;
  String? _selectedDepartment;

  final List<EmployeeModel> _lstEmployees = [];

  @override
  void dispose() {
    _fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Enter full name',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.grey.shade50,
                ),
                validator: (value) => value == null || value.isEmpty ? 'Please enter full name' : null,
              ),
              const SizedBox(height: 20),
              MyDropdown(
                label: "Gender",
                icon: Icons.people,
                items: const ["Male", "Female", "Other"],
                value: _selectedGender,
                onChanged: (val) => setState(() => _selectedGender = val),
              ),
              const SizedBox(height: 20),
              MyDropdown(
                label: "Department",
                icon: Icons.business,
                items: const ["IT", "SALES", "SUPPORT"],
                value: _selectedDepartment,
                onChanged: (val) => setState(() => _selectedDepartment = val),
              ),
              const SizedBox(height: 30),
              MyElevatedIconButton(
                label: "Add Employee",
                icon: Icons.add,
                color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final emp = EmployeeModel(
                      fullName: _fullNameController.text,
                      gender: _selectedGender!,
                      department: _selectedDepartment!,
                    );
                    setState(() => _lstEmployees.add(emp));
                    _fullNameController.clear();
                    _selectedGender = null;
                    _selectedDepartment = null;
                  }
                },
              ),
              const SizedBox(height: 40),
              MyEmployeeListView(employees: _lstEmployees),
            ],
          ),
        ),
      ),
    );
  }
}