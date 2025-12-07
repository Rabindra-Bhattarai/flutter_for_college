// lib/screens/cardview_screen.dart
import 'package:flutter/material.dart';
import '../models/student_model.dart';
import '../widgets/my_card_widgets.dart';

class CardViewScreen extends StatelessWidget {
  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StudentModel> students = [
      StudentModel(fname: 'Rabindra', lname: 'Bhattarai', city: 'Pokhara'),
      StudentModel(fname: 'Samuel', lname: 'Rana', city: 'New York'),
      StudentModel(fname: 'Kiran', lname: 'Pokhrel', city: 'Kathmandu'),
      StudentModel(fname: 'michel', lname: 'khatri', city: 'Dhading'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('CardView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return MyCardWidgets(student: students[index]);
        },
      ),
    );
  }
}























// import 'package:flutter/material.dart';
//
// class CardViewScreen extends StatelessWidget {
//   const CardViewScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text("Card View"),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body:SizedBox(
//         height:200,
//         width: double.infinity,
//         child: Card(
//           color:Colors.amber,
//           margin: const EdgeInsets.all(10),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           elevation:8,
//           child:Column(
//             mainAxisAlignment: MainAxisAlignment.center ,
//             children: [
//               Text(
//                 "First name : Rabindra",
//                 style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
//               ),
//               Text(
//                 "Last name : Bhattarai",
//                 style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
//               ),
//               Text(
//                 "City : Kathmandu",
//                 style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
//               )
//             ],
//           )
//
//           // child: Center(
//           //   child: Text(
//           //       "Hello I am CardView Screen",
//           //   style:TextStyle(fontSize: 18),
//           // ),
//           // ),
//           ),
//         ),
//       );
//   }
// }
