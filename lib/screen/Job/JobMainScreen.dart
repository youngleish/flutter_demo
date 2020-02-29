import 'package:flutter/material.dart';

class JobScreen extends StatefulWidget {
  @override
  _JobScreenState createState() => new _JobScreenState();

  // @override
  // State<StatefulWidget> createState() {
  //   return null;
  // }
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 0, 215, 198),
      child: Center(
        child: Text(
          '公司',
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
