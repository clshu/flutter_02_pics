// I need to import a helper lib
// from flutter to get contents on the screen
import 'package:flutter/material.dart';

// Define a 'main' function to run when our app starts
void main() {
// Create a new text widget to show some text on the screen
  var app = MaterialApp(
    home: Text('Hi There'),
  );
// Take that widget and get it on the screen

  runApp(app);
}
