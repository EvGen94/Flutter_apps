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
  final questions = const [
    {
      "questionText": "What's your favorite color ?",
      "answerText": ["Black", "red", "Green", "White"],
    },
    {
      "questionText": "What's your favorite animal ?",
      "answerText": ["Dog1", "Cat1", "Dog2", "Cat2"],
    },
    {
      "questionText": "Who is your favorite instructor ?",
      "answerText": ["Me1", "Me2", "Me3", "Me4"],
    },
  ];
  var _indexQuestion = 0;

  void _answerQuestion() {
    setState(() {
      _indexQuestion = _indexQuestion + 1;
    });
    print(_indexQuestion);
    if (_indexQuestion < questions.length) {
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_indexQuestion]['questionText'],
            ),
            ...(questions[_indexQuestion]["answerText"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
