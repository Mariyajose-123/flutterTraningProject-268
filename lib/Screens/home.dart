import 'package:flutter/material.dart';
import 'package:initial_flutter_project/Screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreeHome extends StatelessWidget {
  const ScreeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }

  signout(BuildContext cxt) async {
    final _sharedPreferance = await SharedPreferences.getInstance();
    await _sharedPreferance.clear();
    Navigator.of(cxt).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
