import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
import 'tab4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabController = new DefaultTabController(
        length: 4,  //số tab
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("These are tabs"),
            bottom: new TabBar(
              indicatorColor: Colors.amberAccent,
              indicatorWeight: 2.0,
              tabs: [
                new Tab(
                  icon: new Icon(Icons.home),
                  text: "Home",),
                new Tab(
                  icon: new Icon(Icons.group),
                  text: "Group",),
                new Tab(
                  icon: new Icon(Icons.chat_bubble),
                  text: "Chat",),
                new Tab(
                  icon: new Icon(Icons.cloud),
                  text: "Cloud",),
              ],
            ),
          ),
          body: new TabBarView(children: [
            new Tab1(),
            new Tab2(),
            new Tab3(),
            new Tab4(),
          ]),
        )
    );
    return new MaterialApp(
      title: "",
      home: tabController
    );
  }
}