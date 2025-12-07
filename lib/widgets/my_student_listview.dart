import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';

class MyStudentListview extends StatefulWidget {
  final List<StudentModel> lstStudents;
  const MyStudentListview({super.key,
    required this.lstStudents
  });

  @override
  State<MyStudentListview> createState() => _MyStudentListviewState();
}

class _MyStudentListviewState extends State<MyStudentListview> {
  @override
  Widget build(BuildContext context) {
    return widget.lstStudents.isNotEmpty ? ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.lstStudents.length,
        itemBuilder: (context,index){
          final student = widget.lstStudents[index];
          return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                    child: Text(student.fname[0].toUpperCase())
                ),
                title: Text('${student.fname} ${student.lname}'),
                subtitle:  Text(student.city),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        widget.lstStudents.removeAt(index);
                      });
                    }, icon: const Icon(Icons.delete),color: Colors.red,)
                  ],
                ),
              )
          );
        })
        :
    Text(
      "No Data",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, color: Colors.grey.shade400),
    );
  }
}