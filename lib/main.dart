import 'package:flutter/material.dart';
import 'package:initial_flutter_project/listView.dart';
import 'package:initial_flutter_project/screen_1.dart';
import 'package:initial_flutter_project/screen_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ScreenOne(),
      // routes: {
      //   'screen_1':(context) {
      //     return ScreenOne();
      //   },
      //   'screen_2':(context) {
      //     return ScreenTwo();
      //   }
      // },
    );
  }
}
