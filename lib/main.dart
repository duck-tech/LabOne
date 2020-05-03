import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final GlobalKey <ScaffoldState> _scaffolKey = new GlobalKey<ScaffoldState>();
    _showSnackBar() {
      print("Show SnackBar here!");
      final snackbar = new SnackBar(
        content: new Text("This is a SnackBar"),
        duration: new Duration(seconds: 3),
        backgroundColor: Colors.green,
        action: new SnackBarAction(label: "OK", onPressed: () {
          print("Press OK on SnackBar");
        }),
      );
      _scaffolKey.currentState.showSnackBar(snackbar);
    }
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        key: _scaffolKey,
        appBar: new AppBar(
          title: new Text("Demo SnackBar"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.info),
                onPressed: _showSnackBar)
          ],
        ),
      ),
    );
  }
}
