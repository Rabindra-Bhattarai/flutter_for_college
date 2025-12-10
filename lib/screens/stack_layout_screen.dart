import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  const StackLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.amber,
              child: const Text('I am First Container'),
            ),
            Positioned(
                top: 1,
                right: 1,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: const Text('I am the second Container'),
                )
            ),
            //Class Work 1
            //
            // Positioned(
            //     bottom:0,
            //     left: 0,
            //     child: Container(
            //     height: 100,
            //     width:100,
            //     color: Colors.red,
            //     child: const Text('Hello I am third container'),
            // ))

            Positioned(
                bottom: -20,
                right:400/2-50,
                child: Container(
                  height: 100,
                  width:100,
                  color: Colors.red,
                  child: const Text('Hello I am third container'),
            ))
          ],
        ),
      ),
    );
  }
}
