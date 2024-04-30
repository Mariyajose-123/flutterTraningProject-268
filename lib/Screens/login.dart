// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:initial_flutter_project/Screens/home.dart';
// import 'package:initial_flutter_project/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ScreenLogin extends StatefulWidget {
//   ScreenLogin({super.key});

//   @override
//   State<ScreenLogin> createState() => _ScreenLoginState();
// }

// class _ScreenLoginState extends State<ScreenLogin> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isDataMatched = true;
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               TextFormField(
//                 controller: _usernameController,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(), hintText: 'User name'),
//                 validator: (value) {
//                   // if(_isDataMatched) {
//                   //   return null;
//                   // } else {
//                   //   return 'Error';
//                   // }
//                   if (value == null || value.isEmpty) {
//                     return 'Value is Emplty';
//                   } else {
//                     return null;
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(), hintText: 'Password'),
//                 validator: (value) {
//                   // if(_isDataMatched) {
//                   //   return null;
//                   // } else {
//                   //   return 'Error';
//                   // }
//                   if (value == null || value.isEmpty) {
//                     return 'Value is Emplty';
//                   } else {
//                     return null;
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Visibility(
//                     visible: !_isDataMatched,
//                     child: Text(
//                       'Username password doesnot match',
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                   ElevatedButton.icon(
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           checkLogin(context);
//                         } else {
//                           print('Data Empty');
//                         }
//                       },
//                       icon: Icon(Icons.check),
//                       label: Text('Login')),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     ));
//   }

//   void checkLogin(BuildContext context) async {
//     final _username = _usernameController.text;
//     final _password = _passwordController.text;
//     if (_username == _password) {
//       print('Username password  match');
//       Navigator.of(context)
//           .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreeHome()));
//       final _sharedPreferance = await SharedPreferences.getInstance();
//       await _sharedPreferance.setBool(SAVE_KEY_NAME, true);
//       //gotohome
//     } else {
//       print('Username password doesnot match');
// //snackbar
//       // final _errorMessage = 'Username password doesnot match';
//       // ScaffoldMessenger.of(context).showSnackBar(
//       //   SnackBar(
//       //       behavior: SnackBarBehavior.floating,
//       //       backgroundColor: Colors.red,
//       //       margin: EdgeInsets.all(10),
//       //       duration: Duration(seconds: 5),
//       //       content: Text(_errorMessage)),
//       // );

//       // showDialog(
//       //     context: context,
//       //     builder: (ctx1) {
//       //       return AlertDialog(
//       //         title: Text('Error'),
//       //         content: Text(_errorMessage),
//       //         actions: [
//       //           TextButton(
//       //               onPressed: () {
//       //                 Navigator.of(ctx1).pop();
//       //               },
//       //               child: Text('Close'))
//       //         ],
//       //       );
//       //     });

// // alert dialogs
//       setState(() {
//         _isDataMatched = false;
//       });

// // show Text
//     }
//   }
// }
