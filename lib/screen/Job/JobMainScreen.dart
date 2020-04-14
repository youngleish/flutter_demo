import 'package:flutter/material.dart';
import 'package:flutter_demo/item/job_item.dart';
import 'package:flutter_demo/model/job.dart';

class JobScreen extends StatefulWidget {
  @override
  _JobScreenState createState() => new _JobScreenState();

  // @override
  // State<StatefulWidget> createState() {
  //   return null;
  // }
}

class _JobScreenState extends State<JobScreen> {
  List<Job> _jobList = [];
  
  // 滚动controller
  ScrollController _scrollCtrl = ScrollController();

  @override
  void initState() {
    super.initState();
    // 数据加载
    getJobList();
    // 监听事件
    _scrollCtrl.addListener(() {
      // 位置的坐标 == 最大区域
      if (_scrollCtrl.position.pixels == _scrollCtrl.position.maxScrollExtent) {
        print('滑动最底部了');
      }
    });
  }

  getJobList() {
    setState(() {
      _jobList = Job.fromJson("""
        {
          "list": [
            {
              "name": "架构师（Android）",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "资深iOS架构师",
              "cname": "今日头条",
              "size": "D轮",
              "salary": "40k-60k",
              "username": "Kimi",
              "title": "HRBP"
            },
            {
              "name": "架构师（大前端）",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "资深Android架构师",
              "cname": "今日头条",
              "size": "D轮",
              "salary": "40k-60k",
              "username": "Kimi",
              "title": "HRBP"
            },
            {
              "name": "架构师（Android）",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "Flutter工程师",
              "cname": "今日头条",
              "size": "D轮",
              "salary": "40k-60k",
              "username": "Kimi",
              "title": "HRBP"
            }
          ]
        }
      """);
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        elevation: 0.0,
        title: Text(
          '职位',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.access_alarm,
              color: Colors.white,
            ), 
            onPressed: () {
              print('点击按钮了');
            }
          )
        ],
      ),
      body: RefreshIndicator(
        child: Center(
          child: ListView.builder(
            itemCount: _jobList.length,
            itemBuilder: buildJobItem,
            controller: _scrollCtrl
          ),
        ), 
        onRefresh: _onRefresh
      ),
    );
  }

  Future<void> _onRefresh() async{
    await Future.delayed(Duration(seconds: 3), (){
      print('_onrefresh');
    });
  }  

  Widget buildJobItem(BuildContext context, int index) {
    Job job = _jobList[index];
    var jobItem = new InkWell(
      onTap: () {
        print('点击列表');
      },
      child: new JobListItem(job),
    );
    return jobItem; 
  }
}
