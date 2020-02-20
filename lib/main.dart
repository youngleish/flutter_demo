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
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          // leading: Text('leading'),
          // actions: <Widget>[ // 加入action后title不居中，需要使用centerTitle
          //   Text('action1'),
          //   Text('action2'),
          // ],
          centerTitle: true,
        ),
        body: Center(
          child: Text("THIS IS BODY"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('闹钟')
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), title: Text('哈哈')
            )
          ],
        ),
        drawer: Drawer(
          elevation: 10.0,
          child: Center(
            child: Text('drawer'),
          ),
        ),
      ),
    );
  }
}

