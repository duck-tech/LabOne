import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MainPage extends StatefulWidget {
  final String title;
//  custom contructor, add property title
  MainPage({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
//    return a state object
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: Text(widget.title),
        ),
        body: new GridView.extent(
          mainAxisSpacing: 5.0, //khoảng cách giữa các hàng trong gridview
          crossAxisSpacing: 5.0, // khoảng cách các cột trong gridview
          maxCrossAxisExtent: 150.0,// dựa và tỉ lệ chia cột, số càng nhỏ cột càng nhiều và ngược lại
          children: _buildGridTitles(10),
        )
    );
  }

  List<Widget> _buildGridTitles(numberImage){
    List<Stack> container = new List<Stack>.generate(numberImage , (int index){
//      index = 0 , 1 , 2 ,3 , 4, .....
      final imageName = index < 9 ? "images/image_0${index + 1}.jpg" : "images/image_${index + 1}.jpg";
      return new Stack(
        alignment: const Alignment(1.0, 1.0),
        children: <Widget>[
          new Container(
            child: new Image.asset(
              imageName,
              width: 150.0,
              height: 150.0,
              fit: BoxFit.fill, //co ảnh cho vừa 1 khối hình chữ vuông, trong Stack không dùng đc box
            ),
          ),
          new Container(

            padding: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(100, 100, 100, 100),
            ),
            child:  new Text(
              "Hello",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      );

    });
    return container;
  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "",
        home: new MainPage(title: "GridView of Images")
    );
  }
}
