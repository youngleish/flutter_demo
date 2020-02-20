import 'package:flutter/material.dart';
import 'Component/friend_list.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: { // 设置路由
        './home' : (BuildContext context) => HomePage(),
        './detail' : (BuildContext context) => DetailPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Center(
        child: GestureDetector(
          onTap: () { // onTabUp onTabDown
            // print('onTab');
            Navigator.pushNamed(context, './detail'); // 跳转页面
          },
          child: Text(
            '点击跳转详情页点击跳转详情页点击跳转详情页点击跳转详情页点击跳转详情页',
            textDirection: TextDirection.ltr, // 文本多的时候一个对齐方式问题
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, './home');
            Navigator.pop(context); // 跳转到上一层
            // Navigator.popAndPushNamed(context, './home'); // 先跳转到上一个页面，然后基于上一个页面进行跳转
          },
          child: Text(
            "点击跳转首页",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.normal
            ),
          ),
        ),
      ),
    );
  }
}