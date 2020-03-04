import 'package:flutter/material.dart';
import 'package:flutter_demo/Component/tab_item.dart';
import 'package:flutter_demo/screen/Company/CompanyScreen.dart';
import 'package:flutter_demo/screen/Mine/MineMainScreen.dart';
import 'package:flutter_demo/screen/Message/MessageMainScreen.dart';
import 'package:flutter_demo/screen/Job/JobMainScreen.dart';

class BOSSApp extends StatefulWidget {
  @override
  _BOSSAppState createState() => new _BOSSAppState();
}

class _BOSSAppState extends State<BOSSApp> with SingleTickerProviderStateMixin {

  TabController _controller;
  int _currentIndex = 0;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();

    // 初始化controller
    _controller = new TabController(
      initialIndex: _currentIndex, // 默认下标
      length: 4,
      vsync: this // controller值变化以后回调方法由谁进行回调  注意这里必须添加with SingleTickerProviderStateMixin
    );

    // 回调函数
    onChanged = () {
      // 改变currentIndex值
      setState(() {
        _currentIndex = this._controller.index;
      });
    };
    // 监听controller值的变化 
    _controller.addListener(onChanged);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView( // 切换tab显示的内容
        children: <Widget>[
          JobScreen(),
          CompanyScreen(),
          MessageScreen(),
          MineScreen()  
        ],
        controller: _controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _controller,
          labelStyle: TextStyle(fontSize: 11),
          tabs: <Widget>[
            IconTab(
              icon: _currentIndex == 0 ? 'assets/images/ic_main_tab_find_nor.png' : 'assets/images/ic_main_tab_find_pre.png',
              text: '职位',
              color: _currentIndex == 0 ? Colors.red : Colors.blue,
            ),
            IconTab(
              icon: _currentIndex == 1 ? 'assets/images/ic_main_tab_find_nor.png' : 'assets/images/ic_main_tab_find_pre.png',
              text: '职位',
              color: _currentIndex == 1 ? Colors.red : Colors.blue,
            ),
            IconTab(
              icon: _currentIndex == 2 ? 'assets/images/ic_main_tab_find_nor.png' : 'assets/images/ic_main_tab_find_pre.png',
              text: '职位',
              color: _currentIndex == 2 ? Colors.red : Colors.blue,
            ),
            IconTab(
              icon: _currentIndex == 3 ? 'assets/images/ic_main_tab_find_nor.png' : 'assets/images/ic_main_tab_find_pre.png',
              text: '职位',
              color: _currentIndex == 3 ? Colors.red : Colors.blue,
            )
        ]),
      ),
    );
  }
}
