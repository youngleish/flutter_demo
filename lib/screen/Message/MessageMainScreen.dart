import 'package:flutter/material.dart';
import 'package:flutter_demo/screen/Mine/MineMainScreen.dart';
import 'package:scoped_model/scoped_model.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreen createState() => new _MessageScreen();
}

class _MessageScreen extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(), 
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 245),
        appBar: AppBar(
          title: Text(
            '消息',
            style: TextStyle(
              fontSize: 20.0, color: Colors.white
            ),
          )
        ),
        body: MiddlerCounter(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false, // 控制组件是否重新build, false 更新ui
          builder: (context, _, model) => FloatingActionButton(
            onPressed: model.increaseCount,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

class MiddlerCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Counter()
        ),
      ),
    );
  }
}

class Counter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => Center(
        child: GestureDetector(
          onTap: model.increaseCount,
          child: Text(
            '${model.count}',
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue
          )),
        ),
      ),
    );
  }
}

class CounterModel extends  Model{
  int _count = 0;
  // 获取count值
  int get count => _count;

  void increaseCount() {
    _count += 1;
    // 通知更新小部件
    notifyListeners();
  }
}

