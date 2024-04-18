import 'package:flutter/material.dart';
import 'package:initial_flutter_project/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('PERSON $index'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return ScreenTwo(name: 'PERSON $index');
                    },
                  ),
                );
              },
              subtitle: Text('Message $index'),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blueAccent[100],
                backgroundImage: AssetImage('assets/images/orange.jpg'),
              ),
              trailing: Text('1$index:00 PM'),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
