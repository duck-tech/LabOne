import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
@override
Widget build(BuildContext context) {
// TODO: implement build

//    need multiple widget into a parent = Container widget
Widget titleSection = new Container(
padding: const EdgeInsets.all(10.0),
child: new Row(
children: <Widget>[
new Expanded(
child: new Column(//bài khác mà anh?
children: <Widget>[
new Container(
padding: const EdgeInsets.only(bottom: 10.0),
child: new Text(
"Viet's Channel",
style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
)
),
new Text("This is contains video in development, laptop, pc.")
],
crossAxisAlignment: CrossAxisAlignment.start,
),
),
new Icon(Icons.favorite , color: Colors.red,),
new Text("100", style: new TextStyle(fontSize: 10.0),),
],
),
);

Widget buildButton(IconData iconData, String titleBtn){
final Color color = Colors.blue;
return new Column(
children: <Widget>[
new Icon(iconData, color: color,),
new Container(
margin: const EdgeInsets.only(
top: 5.0
),
child: new Text(titleBtn, style: new TextStyle(color: color, fontWeight: FontWeight.w700),),
)
],
);
}

Widget btnSection(){
return new Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[
//          new Text("Button 1"),
buildButton(Icons.home, "Home"),
buildButton(Icons.arrow_back, "Back"),
buildButton(Icons.arrow_forward, "Next"),
buildButton(Icons.share, "Share"),
],
);
}

final textBottom = new Container(
padding: new EdgeInsets.all(20.0),
child: new Text("""Bài này tiếp tục chia sẻ với các bạn cách bố trí các layout trong Flutter. Trong bài trước chúng ta đã bố trí 1 Image và các Text xung quanh Image. Bài này sẽ tiếp tục tạo ra 4 button bố trí đều nằm bên dưới Text, mỗi nút gồm có tiêu đề và Icon của nút được bố trí theo hàng cột.
Việc tạo ra các nút bấm được viết thành các function/thuộc tính riêng với các params truyền vào là buttonTitle và Icon.
Bên dưới bộ 4 nút bấm là 1 Text dài, chứa nội dung dưới dạng mô tả hay paragraph nào đó. Để đưa 1 string dài vào bên trong một Text, ta sử dụng 3 dấu nháy đơn(three single quotes) ở vị trí đầu và cuối string đó.""",
style: new TextStyle(
color: Colors.grey[850],
),
textAlign: TextAlign.justify,// căn lề 2 bên
),
);

//  build function return a "Widget"
return new MaterialApp(
title: "",
home: new Scaffold(
appBar: new AppBar(
title: new Text("Channel"),
centerTitle: true,
),
body: new ListView(
children: <Widget>[
new Image.asset(
'images/channel.png',
fit: BoxFit.cover, //hiển thị hình ảnh nhỏ nhất có thể nhưng vẫn bao phủ toàn bộ box
),
titleSection,
btnSection(),
textBottom
],
)
),
);
}

}