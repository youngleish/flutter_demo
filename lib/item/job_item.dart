import 'package:flutter/material.dart';
import 'package:flutter_demo/model/job.dart';

class JobListItem extends StatelessWidget {
  final Job jobList;
  JobListItem(this.jobList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 3.0,
        horizontal: 5.0
      ),
      child: SizedBox(
        child: Card(
          elevation: 0.5, //阴影大小
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 10.0,
                            bottom: 5.0
                          ),
                          child: Text(jobList.name),
                        ),
                        new Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 10.0
                                ),
                                child: Text(
                                  jobList.salary,
                                  style: TextStyle(
                                    color: Colors.red
                                  ), 
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: new Text(
                        jobList.cname+' '+jobList.size,
                        // textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      ),
                      margin: const EdgeInsets.only(
                        top: 5.0,
                        left: 10.0,
                        bottom: 5.0
                      ),
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 10.0,
                            right: 5.0,
                            bottom: 15.0
                          ),
                          child: Text(
                            jobList.username + '' + jobList.title,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 215, 198)
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}