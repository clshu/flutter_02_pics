import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hi, there');
          },
        ),
        appBar: AppBar(
          title: Text('Let\'s see some images'),
        ),
      ),
    );
  }
}
