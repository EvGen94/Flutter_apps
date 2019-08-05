import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexQuestion = 0;

  void answerQuestion() {
    setState(() {
      _indexQuestion = _indexQuestion + 1;
    });

    print(_indexQuestion);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color",
      "What's your favorite animal",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_indexQuestion],
            ),
            Answer(),
            Answer(),
            Answer(),
            
            
              
          
          ],
        ),
      ),
    );
  }
}
