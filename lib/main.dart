import 'package:flutter/material.dart';
import 'package:flutter_demo/screen/welcom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 0, 215, 198), // 主题色
        primaryIconTheme: IconThemeData(color: Colors.white),
        accentColor: Colors.cyan[300]
      ),
      home: WelcomePage(),
    );
  }
}
