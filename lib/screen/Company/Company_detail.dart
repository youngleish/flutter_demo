// 有状态的控件
import 'package:flutter/material.dart';
import 'package:flutter_demo/Component/DotsIndicator.dart';
import 'package:flutter_demo/model/companylist_item.dart';

const _mAppImageHeight = 265.0;
class CompanyDetail extends StatefulWidget {
  // 传入数据company
  final Company _company;
  // 构造函数
  CompanyDetail(this._company);

  @override
  _CompanyDetail createState() => _CompanyDetail();
}

class _CompanyDetail extends State<CompanyDetail> {

  List<String> _urls = [
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20170725/861159df793857d6cb984b52db4d4c9c.jpg',
    'https://img2.bosszhipin.com/mcs/chatphoto/20151215/a79ac724c2da2a66575dab35384d2d75532b24d64bc38c29402b4a6629fcefd6_s.jpg',
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20180207/c15c2fc01c7407b98faf4002e682676b.jpg'
  ];

  List<Widget> _imagePages = <Widget>[];

  @override
  void initState() {
    super.initState();
    // 初始化 _imagePages
    _urls.forEach((String url) {
      // _imagePages中添加Widget 
      _imagePages.add(
        new Container(
          color: Colors.black.withAlpha(900), 
          // 图片撑满容器
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(), // 撑开页面
            child: Image.network(
              url,
              fit: BoxFit.cover,
              height: _mAppImageHeight,
            ),
          ),
        )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      // 此处的布局不可以使用row或者column因为有个返回按钮和整个页面叠加在一起
      body: Stack(
        children: <Widget>[
          // 轮播图列表因为结构比较单一所以不使用listView 
          SingleChildScrollView(
            // 垂直布局
            child: Column(
              children: <Widget>[
                // SizeBox.fromSize():创建一个指定Size的SizedBox
                SizedBox.fromSize(
                  size: Size.fromHeight(_mAppImageHeight), // 高度
                  child: IndicatorViewPager(pages: _imagePages),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}