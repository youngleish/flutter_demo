import 'dart:convert';

import 'package:flutter/material.dart';

class Friend {
  @required final String avatar;
  @required final String name;
  @required final String email;

  // 构造函数
  Friend({this.avatar, this.name, this.email});

  // 从rstString中拿想要的数据转换成list<Friend>  => list中放的是一个一个的Friend
  static List<Friend> resolveDataFromRst(rstData) {
    // json格式化
    var json = jsonDecode(rstData);
    var rst = json['results'];
    // 遍历rst
    var listRst = rst
    .map((obj) => Friend.fromMap(obj))
    .toList() // 转成list
    .cast<Friend>(); // 命名Friend

    return listRst;
  }

  static Friend fromMap(Map map) {
    var name = map['name'];

    return new Friend(
      avatar: map['picture']['thumbnail'],
      name: '${name['first']} ${name['last']}',
      email: map['email']
    );
  }
}