import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class IconTab extends StatefulWidget {
  // 可以配置项
  final String text;
  final String icon;
  final String color;

  IconTab({
    this.text,
    this.icon,
    this.color,
  });

  // 一种写法
  // @override
  // _IconTabState createState() => new _IconTabState();

  //  另外一种写法
  @override
  State<StatefulWidget> createState() {
    return _IconTabState();
  }
}

class _IconTabState extends State<IconTab> {
  @override
  Widget build(BuildContext context) {
    Widget icon = new Column(
      mainAxisAlignment: MainAxisAlignment.center, // 水平居中
      crossAxisAlignment: CrossAxisAlignment.center, // 垂直方向居中
      children: <Widget>[
        // 图片要设置宽和高所以要用container包裹
        new Container(
          child: new Image(
            image: AssetImage(widget.icon), // widget.icon 获取图片的名称
            height: 30.0,
            width: 30.0,
          ),
          margin: EdgeInsets.only(bottom: 3.0),
        ),
        Text(
          widget.text,
          softWrap: false,
          style: TextStyle(color: widget.color),
        )
      ],
    );

    //  导航栏有固定高度，所以要用尺寸盒子包裹起来
    return SizedBox(
      height: 53.0,
      child: icon,
    );
  }
}
