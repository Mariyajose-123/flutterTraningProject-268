// import 'package:flutter/material.dart';
// import 'package:initial_flutter_project/Screens/home.dart';
// import 'package:initial_flutter_project/Screens/login.dart';
// import 'package:initial_flutter_project/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ScreenSplash extends StatefulWidget {
//   const ScreenSplash({super.key});

//   @override
//   State<ScreenSplash> createState() => _ScreenSplashState();
// }

// class _ScreenSplashState extends State<ScreenSplash> {
//   @override
//   void initState() {
//     checkUserLoggIn();
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset('assets/images/orange.jpg'),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   Future<void> gotoLogin() async {
//     await Future.delayed(Duration(seconds: 3));
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (ctx) => ScreenLogin(),
//       ),
//     );
//   }

//   Future<void> checkUserLoggIn() async {
//     final _sharedPrefs = await SharedPreferences.getInstance();
//     _sharedPrefs.get(SAVE_KEY_NAME);
//     final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
//     if (_userLoggedIn == null || _userLoggedIn == false) {
//       gotoLogin();
//     } else {
//       Navigator.of(context)
//           .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreeHome()));
//     }
//   }
// }
