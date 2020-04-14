import 'dart:convert';

import 'package:flutter/material.dart';

class Job {
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String username;
  final String title;

  // 构造器
  Job({
    @required this.name,
    @required this.cname,
    @required this.size,
    @required this.salary,
    @required this.username,
    @required this.title
  });
  // json串转换成json格式数据
  static List<Job> fromJson(String json) {
    // 初始化数据
    List<Job> listModel = new List<Job>();
    // JSON 解析， 定义list[]
    List list = jsonDecode(json)['list'];
    list.forEach((obj) {
      var model = Job.fromMapData(obj);
      listModel.add(model);
    });
    return listModel;
  }
  // map变成companyModel = json对象
  static Job fromMapData(Map map) {
    return new Job(
      name: map['name'], 
      cname: map['cname'], 
      size: map['size'], 
      salary: map['salary'], 
      username: map['username'], 
      title: map['title']
    );
  }
}