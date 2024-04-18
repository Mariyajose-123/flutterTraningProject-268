import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Example'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('PERSON $index'),
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
