import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class RandomEnglishWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomEnglishWordsState();
  }
}

class RandomEnglishWordsState extends State<RandomEnglishWords>{
  final _words = <WordPair>[];
  final _checkedWord = new Set<WordPair>();

  //trả về một widget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("The English Words"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushToSaveWordsScreen)
        ],
      ),
      body: new ListView.builder(itemBuilder: (context , index){
        if(index >= _words.length) _words.addAll(generateWordPairs().take(10));
        return _buildRow(_words[index] , index);
      }),
    );
  }

  _pushToSaveWordsScreen(){
    final pageRoute = new MaterialPageRoute(builder: (context){
//      _checkedWord (list of WordPair) => map => lazy list (Iterable) of ListTitle
      final listTitle = _checkedWord.map((wordPair){
        return new ListTile(
          title: new Text(
            wordPair.asUpperCase,
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        );
      });
//      return a Widget
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Checked Word"),
        ),
        body: new ListView(
          children: listTitle.toList() //lazy list (Iterable) => list
        ),
      );

    });
    Navigator.of(context).push(pageRoute);
  }

  Widget _buildRow(WordPair wordPair , int index){

    final color = index % 2 == 0 ? Colors.red : Colors.blue;
    final isChecked = _checkedWord.contains(wordPair);

    // Tạo ra từng hàng một
    return new ListTile(
      leading: new Icon(isChecked ? Icons.check_box : Icons.check_box_outline_blank, color: color,),
      title: new Text(
        wordPair.asUpperCase,
        style: new TextStyle(fontSize: 18.0, color: color),
      ),
      onTap: (){
        setState(() {
          if(isChecked){
            _checkedWord.remove(wordPair);
          }else{
            _checkedWord.add(wordPair);
          }
        });
      },
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return new MaterialApp(
      title: "",
      home: new RandomEnglishWords()
    );
  }
}