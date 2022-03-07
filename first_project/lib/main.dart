import 'package:first_project/Screens/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MaterialApp main features....
// Theme..
// Navigator..
// localization..
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}




