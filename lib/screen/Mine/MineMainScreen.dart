import 'package:flutter/material.dart';

class MineScreen extends StatefulWidget {
  @override
  _MineScreen createState() => new _MineScreen();
}

class _MineScreen extends State<MineScreen> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
        count: _count,
        increaseCount: _increaseCount,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 242, 242, 245),
          appBar: AppBar(
              title: Text(
            '大前端',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          )),
          body: MiddlerCounter(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _increaseCount,
          ),
        ));
  }
}

class MiddlerCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Counter()),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取共享数据
    final int count = CounterProvider.of(context).count;
    final VoidCallback increaseCount =
        CounterProvider.of(context).increaseCount;
    return Center(
      child: GestureDetector(
        onTap: increaseCount,
        child: Text(
          '$count',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  // 定义共享的数据
  final int count;
  final VoidCallback increaseCount;
  final Widget child;
  // 构造函数初始化
  CounterProvider({this.count, this.increaseCount, this.child});

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: CounterProvider);

  @override
  // 决定是否重建新的小部
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
