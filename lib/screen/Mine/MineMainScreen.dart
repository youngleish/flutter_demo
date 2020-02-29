import 'package:flutter/material.dart';

class MineScreen extends StatefulWidget {
  @override
  _MineScreen createState() => new _MineScreen();

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return null;
  // }
}

class _MineScreen extends State<MineScreen> {
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
