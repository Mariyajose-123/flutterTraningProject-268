import 'package:flutter/material.dart';
import 'package:initial_flutter_project/Screens/splash.dart';

const SAVE_KEY_NAME = 'UserLoggIn';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ScreenSplash(),
    );
  }
}
