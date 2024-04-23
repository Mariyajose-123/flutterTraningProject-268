import 'package:flutter/material.dart';
import 'package:initial_flutter_project/BottomSheet/screen_account.dart';
import 'package:initial_flutter_project/BottomSheet/screen_main.dart';
import 'package:initial_flutter_project/BottomSheet/screen_search.dart';

class ScreenHomeBottomSheet extends StatefulWidget {
  const ScreenHomeBottomSheet({super.key});

  @override
  State<ScreenHomeBottomSheet> createState() => _ScreenHomeBottomSheetState();
}

class _ScreenHomeBottomSheetState extends State<ScreenHomeBottomSheet> {
  int _currentSelectedIndex = 0;

  final _pages = [
    ScreenMain(),
    ScreenSearch(),
    ScreenAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        enableFeedback: true,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });

          print(newIndex);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
