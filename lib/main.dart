import 'package:flutter/material.dart';
import 'package:practice_flutter_app/screen/MainScreen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MainScreen(),
    );
  }
}
