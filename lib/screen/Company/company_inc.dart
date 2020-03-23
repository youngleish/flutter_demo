import 'package:flutter/material.dart';

class CompanyInc  extends StatelessWidget {
  const CompanyInc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '公司介绍',
              textAlign: TextAlign.justify, 
              style: TextStyle(fontSize: 18.0),  
            )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: '这是一家很厉害的公司，做搜索引擎出身的，但是现在也搞其他的产品线了，智能AI，无人驾驶，当然公司大了，也会干昧着良心的事情，比如百度搜索给莆田系医院打广告，残害患者。',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}