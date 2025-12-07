import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 3,
        children: [
          for (int i=1; i<=10; i++)...{
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child:Text( '$i', style: const TextStyle(fontSize: 50)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                ),
              ),

            ),


          }
          // ElevatedButton(onPressed: (){}, child: Text("1")),
          // ElevatedButton(onPressed: (){}, child: Text("2")),
          // ElevatedButton(onPressed: (){}, child: Text("3")),
          // ElevatedButton(onPressed: (){}, child: Text("4")),
          // ElevatedButton(onPressed: (){}, child: Text("5")),
          // ElevatedButton(onPressed: (){}, child: Text("6")),
          // ElevatedButton(onPressed: (){}, child: Text("7")),
          // ElevatedButton(onPressed: (){}, child: Text("8")),
          // ElevatedButton(onPressed: (){}, child: Text("9")),
        ],
      ),
    );
  }
}
