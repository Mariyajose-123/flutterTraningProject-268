
// ///////////First program

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.lightGreen,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.lightBlue,
//         body: SafeArea(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                   color: Colors.red,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'My First Project',
//                         // textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.purpleAccent,
//                           fontSize: 30,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           print('Button pressed!');
//                         },
//                         child: Text('Click me'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           print('ElevatedButton pressed!');
//                         },
//                         child: Text('Click ElevatedButton'),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               print('Button pressed!');
//                             },
//                             child: Text('Click me'),
//                           ),
//                           IconButton(onPressed: () {}, icon: Icon(Icons.info))
//                         ],
//                       )
//                     ],
//                   )),
//             ),
//             Expanded(
//                 flex: 2,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(50),
//                     border:
//                         Border.all(color: Colors.deepPurpleAccent, width: 4),
//                   ),
//                   child: Center(child: Text('Sample Text')),
//                 )),
//             Expanded(
//               flex: 1,
//               child: Container(
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'My First Project',
//                         // textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.purpleAccent,
//                           fontSize: 30,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           print('Button pressed!');
//                         },
//                         child: Text('Click me'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           print('ElevatedButton pressed!');
//                         },
//                         child: Text('Click ElevatedButton'),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               print('Button pressed!');
//                             },
//                             child: Text('Click me'),
//                           ),
//                           IconButton(onPressed: () {}, icon: Icon(Icons.info))
//                         ],
//                       )
//                     ],
//                   )),
//             )
//           ],
//         )));
//   }
// }

// ////////// second program 


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.lightGreen,
//       ),
//       home: ScreenHome(),
//     );
//   }
// }

// class ScreenHome extends StatefulWidget {
//   ScreenHome({super.key});

//   @override
//   State<ScreenHome> createState() => _ScreenHomeState();
// }

// class _ScreenHomeState extends State<ScreenHome> {
//   final _textController = TextEditingController();

//   String _displayText = 'Text will be displayed here-----';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
//           child: Container(
//             color: Colors.yellow[200],
//             child: Column(
//               children: [
//                 TextField(
//                   controller: _textController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Type something',
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // GET Data
//                     print(_textController.text);
//                     setState(() {
//                       _displayText = _textController.text;
//                     });
//                   },
//                   child: Text('click Here'),
//                 ),
//                 Text(_displayText),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// ////////////////////////////// third program  counter Increment

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text(_counter.toString()),),
//       floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
//         print("Add===>${_counter}");
//        setState(() {
//           _counter= _counter + 1;
//        });
//       }),
//     );
//   }
// }

// ///////////////// Fourth Program Normal Simple List


// import 'package:flutter/material.dart';

// class ListViewSample extends StatelessWidget {
//   const ListViewSample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ListView ~~~~~~"),
//       ),
//       body: SafeArea(child: ListView(children: List.generate(100, (index){
//         return Column(
//           children: [
//             Text('Text $index'),
//             Divider(
//               height: 50,
//               thickness: 5,
//               color: Colors.amber[200],
//             ),
//           ],
//         );
//       }
//       ),)),
//     );
//   }
// }


// /////////////////////////////// fivith program --->  ListView.separated

// import 'package:flutter/material.dart';

// class ListViewSample extends StatelessWidget {
//   const ListViewSample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ListView ~~~~~~"),
//       ),
//       body: SafeArea(
//         child: ListView.separated(
//           itemBuilder: (ctx,index){
//             return Text("Text $index");
//           },
//           separatorBuilder: (ctx,index){
//             return Divider();
//           },
//           itemCount: 50,
//         ),
//       ),
//     );
//   }
// }

////////////////////////////// 6th program  ---> Navigation


// import 'package:flutter/material.dart';
// import 'package:initial_flutter_project/screen_2.dart';

// class ScreenOne extends StatelessWidget {
//   const ScreenOne({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Text('Screen 1'),
//               ElevatedButton(
//                   onPressed: () {
//                     // Navigator.of(context).push(
//                     //   MaterialPageRoute(
//                     //     builder: (ctx) {
//                     //       return ScreenTwo();
//                     //     },
//                     //   ),
//                     // );
//                     Navigator.of(context).pushNamed('screen_2');
//                   },
//                   child: Text('GoTo Screen 2'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// } 
