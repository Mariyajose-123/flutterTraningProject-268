import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:initial_flutter_project/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
        getSavedData(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text('saved Value'))
          ],
        ),
      )),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textController.text);

    // shared perference

    final sharedPrefs = await SharedPreferences.getInstance();

    await sharedPrefs.setString('saved_value', _textController.text);
  }

  
Future<void> getSavedData(BuildContext context) async{
  final SharedPrefs = await SharedPreferences.getInstance();
  final savedValue = SharedPrefs.getString('saved_value');
  if(savedValue != null){
    Navigator.of(context).push(MaterialPageRoute(builder: (cxt) => ScreenTwo() ));
  }
}
}
