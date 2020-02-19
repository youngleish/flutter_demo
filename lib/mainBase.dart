import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: CustomListView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // 相当于构造函数继承了父类的方法
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Container(
              alignment: AlignmentDirectional(0, 0) ,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.pink,
                    margin: EdgeInsets.only(right: 10),
                    child: Transform.rotate(
                      angle: -0.5,
                      child: Text('哈哈哈哈哈哈'),
                    )
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green[100],
                    transform: Matrix4.rotationZ(0.3) ,
                    margin: EdgeInsets.only(right: 20)
                  ),
                  Text(
                    '这是文字测试',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber,
                    ),
                  ),
                  // Text(
                  //   '文字财务室2',
                  //   style: Theme.of(context).textTheme.subhead
                  // ),
                  Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(
                      left: 10
                    ),
                    constraints: BoxConstraints(
                      maxHeight: 60,
                      maxWidth: 60
                    ),
                    child: FlutterLogo(
                      size: 60,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepOrangeAccent,
                          offset: Offset(10, 0),
                          blurRadius: 5
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(colors: [Colors.deepPurple, Colors.cyan])
                    ),
                  )
                ]
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: new Image.asset('images/fee.jpg', width: 200, fit: BoxFit.cover)
                ),
                new Image.network('https://cdn.jsdelivr.net/gh/flutterchina/flutter-in-action/docs/imgs/3-17.png'),
                FadeInImage.assetNetwork(placeholder:'images/fee.jpg', image: 'https://dss1.bdstatic.com/5aAHeD3nKgcUp2HgoI7O1ygwehsv/media/ch1/jpg/%E8%82%BA%E7%82%8Epc%E9%80%9A%E6%A0%8F.jpg'),
                Text('fahfh')
              ]
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListView4()
    );
  }
  getListView1() {
    return ListView(
      padding: EdgeInsets.all(30),
      children: <Widget>[
        Text('data1'),
        Text('data2'),
        Text('data3'),
        Text('data4'),
        Text('data1'),
        Text('data2'),
        Text('data4'),
        Text('data3'),
        Text('data4'), 
      ],
    );
  } 

  getListView2() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext ctx, int idx) {
        return Text('$idx');
      },
    );
  }

  getListView3() {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (ctx, idx) {
        return ListTile(
          leading: Text('leading'),
          title: Text('哈哈哈哈哈'),
          subtitle: Text('mei')
        );
      }
    );
  }
  getListView4() {
    _loadData ();
    return ListView.separated(
      itemBuilder: (ctx, idx) {
        return Text('$idx');
      }, 
      separatorBuilder: (ctx, idx) {
        return Divider(
          color: Colors.red,
        );
      }, 
      itemCount: 20
    );
  }

  // 1. 创建HttpClient
  HttpClient httpClient = new HttpClient();
  var url = 'https://randomuser.me/api/?results=30';


  _loadData() async{
    // 2. 打开Http连接设置请求头
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    // 3. 等待连接服务器
    HttpClientResponse response = await request.close();
    // 4. 读取响应内容
    String rstBody = await response.transform(utf8.decoder).join();
    print(rstBody);
    // 5. 请求结束关闭HttpClient
    httpClient.close();
  }
}

