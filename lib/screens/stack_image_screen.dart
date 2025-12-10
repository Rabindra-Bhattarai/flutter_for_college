import 'package:flutter/material.dart';

class StackImageScreen extends StatelessWidget {
  const StackImageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.network('https://easydrawingguides.com/wp-content/uploads/2023/07/how-to-draw-superman-featured-image-1200.png')
            // Container(
            //   height: 400,
            //   width: 400,
            //   color: Colors.amber,
            //   child: const Text('I am First Container'),
            // ),


          ],
        ),
      ),
    );
  }
}
