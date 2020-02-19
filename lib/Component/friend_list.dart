import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demo/Component/friend.dart';

class FriendListPage extends StatefulWidget {
  @override
  _FriendListPageState createState() => new _FriendListPageState(); 
}

class _FriendListPageState extends State<FriendListPage>{
  List<Friend> _friends = [];

  HttpClient httpClient = new HttpClient();
  var url = 'https://randomuser.me/api/?results=30';

  @override
  void initState() {
    super.initState();
    _loadFriendsData();
  }

  _loadFriendsData() async{
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    HttpClientResponse rst = await request.close();
    if (rst.statusCode == 200) {
      String rstString = await rst.transform(utf8.decoder).join();
      print(rstString);

      setState(() {
        _friends = Friend.resolveDataFromRst(rstString);
      });
    }
  }

  Widget _buildFriendsCell(ctx, idx) {
    var friend = _friends[idx];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(friend.avatar),
          ),
          title: Text(friend.name),
          subtitle: Text(friend.email),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('onTab');
          },
          onLongPress: () {
            print('onLongPress');
          },
    );
  }

  Widget _buildContent() {
    var content;
    if (_friends.isEmpty) {
      content = CircularProgressIndicator();
    } else {
      content = ListView.builder(
        itemCount: _friends.length,
        itemBuilder: _buildFriendsCell,
      );
    }
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('好友列表')),
      body: Center(
        child: _buildContent()
      )
    );
  }
}