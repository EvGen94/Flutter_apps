import 'package:flutter/material.dart';

import './question.dart';

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
      "wht's your favorite color ",
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
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("the answerIs 2"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                // ...
                print("the answerIs 3");
              },
            ),
          ],
        ),
      ),
    );
  }
}
