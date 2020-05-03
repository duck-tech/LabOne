import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.account_box, color: Colors.blue, size: 28.0,),
            title: new Text(
                "Nguyễn Văn Việt",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400
                ),
            ),
            subtitle: new Text("Software Developer"),
          ),
          new Divider(color: Colors.blue, indent: 18.0,),
          new ListTile(
            leading: new Icon(Icons.email, color: Colors.blue, size: 28.0,),
            title: new Text(
              "nvviet.18it1@sict.udn.vn",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.phone, color: Colors.blue, size: 28.0,),
            title: new Text(
              "+84 934 773 454",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
    final sizedBox = new Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 250.0,
        child: card,
      ),
    );
    final center = new Center(
      child: sizedBox,
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter Card and SizedBox"),
        ),
        body: center,
      ),
    );
  }
}
