import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socialite/home/post.dart';
import 'package:socialite/status/status.dart';
import 'package:socialite/status/status_card.dart';
import 'package:socialite/utils/constants.dart';

import 'addPost.dart';
import 'data/posts_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: COLOR_WHITE,
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png",
          width: 120,),
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.grey),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              // do something
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: 15.0,
            ),
          )
        ],

      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            Container(
              height: 60.0,
              child: DrawerHeader(
                  child:
                  Text('Navigation', style: TextStyle(color: Colors.black)),
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(left:20.0, top: 15)),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: new Text(
                "Feed",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.purpleAccent),
              title: new Text(
                "Profile",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.flag, color: Colors.green),
              title: new Text(
                "Pages",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
                leading: Icon(Icons.play_circle_fill_sharp, color: Colors.red),
                title: new Text(
                  "Videos",
                  style: TextStyle(fontSize: 18),
                ),
                onTap:(){

                }
            ),
            ListTile(
              leading: Icon(Icons.group, color: Colors.blue),
              title: new Text(
                "Groups",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.edit, color: Colors.orange),
              title: new Text(
                "Courses",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
                leading: Icon(Icons.info, color: Colors.red),
                title: new Text(
                  "Questions",
                  style: TextStyle(fontSize: 18),
                ),
                onTap:(){
                  Navigator.pushNamed(context, '/profile');
                }
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.blue),
              title: new Text(
                "Jobs",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: statusList
                    .map((status) => StatusCard(status: status)).toList(),
              ),
            ),
            AddPost(),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: POST_DATA.length,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return Post(itemData:  POST_DATA[index],);
                  }),
            ),
            // PostsList()
          ],
        ),
      ),
    ));
  }
}
