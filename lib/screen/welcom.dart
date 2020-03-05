import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/home.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePage createState() => new _WelcomePage();

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return null;
  // }
}

class _WelcomePage extends State<WelcomePage> {
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = new Timer(Duration(milliseconds: 2000), () {
      // (Route route) => route == null route为null的时候移除路由
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
        builder: (BuildContext context) => new BOSSApp()
      ), (Route route) => route == null);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 0, 215, 198),
      child: Center(
        child: Text(
          '欢迎来看',
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
  // 移除timer 
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
