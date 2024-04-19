import 'package:flutter/material.dart';
import 'package:initial_flutter_project/screen_1.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.pink,
      //   title: Text(name),
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Text('Screen 2'),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              Text('Value Found'),
            ],
          ),
        ),
      ),
    );
  }
}
