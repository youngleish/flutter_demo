import 'package:flutter/material.dart';

class CompanyScreen extends StatefulWidget {
  @override
  _CompanyScreenState createState() => new _CompanyScreenState();

  // @override
  // State<StatefulWidget> createState() {
  //   return null;
  // }
}

class _CompanyScreenState extends State<CompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: Text(
          '公司',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'data' 
        )
      )
    );
    // return Material(
    //   color: Color.fromARGB(255, 0, 215, 198),
    //   child: Center(
    //     child: Text(
    //       '公司',
    //       style: TextStyle(
    //           fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
    //     ),
    //   ),
    // );
  }
}
