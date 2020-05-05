import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp (
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Font"),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text(
                "This is Galada font",
                style: new TextStyle(
                  fontFamily: "Galada",
                  fontSize: 30.0
                ),
              ),
            new Text(
              "This is JosefinSans font",
              style: new TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 30.0
              ),
            ),
            new Text(
              "This is MontserratSubrayada font",
              style: new TextStyle(
                  fontFamily: "MontserratSubrayada",
                  fontSize: 30.0
              ),
            )
          ],
        ),
      ),
    );
  }
}