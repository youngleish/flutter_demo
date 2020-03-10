import 'package:flutter/material.dart';
import 'package:flutter_demo/model/companylist_item.dart';

class CompanyListItem extends StatelessWidget {

  final Company companyModel;

  CompanyListItem(this.companyModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
        // padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
        // padding: EdgeInsets.only(
        //   top: 3,
        //   left: 5,
        //   right: 5,
        //   bottom: 5
        // ),
        padding: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 3.0
        ),
        child: Card(
          child: Column( // card里面是纵向布局
            crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴对齐方式
            children: <Widget>[
              Row( // 纵向布局的top部分是横向布局
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      left: 15.0,
                      right: 15.0,
                      bottom: 0
                    ),
                    child: Image.network(
                      companyModel.logo,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      companyModel.location.substring(0, companyModel.location.length > 8 ? 8 : companyModel.location.length),
                      style: TextStyle(fontSize: 13.0, color: Colors.grey),
                    ), // 截取字符串
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      left: 5.0,
                      right: 10.0,
                      bottom: 5
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '|'+companyModel.type,
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                        Text(
                          '|'+companyModel.size,
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                        Text(
                          '|'+companyModel.employee,
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Divider(indent: 10, endIndent: 10, thickness: 1, height: 10), // indent 和endIndent是设置间距的， tickNess设置分割线的粗细， height是设置分割线所占的位置高度
              Divider(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                      left: 10,
                      right: 10
                    ),
                    child: Text(
                      '热招: ' + 
                      companyModel.hot + 
                      '等' + 
                      companyModel.count + 
                      '个职位',
                      style: TextStyle(fontSize: 13.0, color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 8.0
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
    );
  }
}