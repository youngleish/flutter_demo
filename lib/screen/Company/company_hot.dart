import 'package:flutter/material.dart';

class CompanyHot  extends StatelessWidget {
  const CompanyHot({Key key}) : super(key: key);

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
              '职位介绍',
              textAlign: TextAlign.justify, 
              style: TextStyle(fontSize: 18.0),  
            )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: '这里是职位介绍这里有很多职位处理',
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