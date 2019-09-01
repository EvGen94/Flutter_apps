import 'package:counter/result.dart';
import 'package:flutter/material.dart';

//import './question.dart';
//import './answer.dart';
import "./quiz.dart";

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
  final _questions = const [
    {
      "questionText": "What's your favorite color ?",
      "answerText": [
        {'text': "Black", 'score': 10},
        {'text': "red", 'score': 5},
        {'text': "Green", 'score': 3},
        {'text': "White", 'score': 1}
      ],
    },
    {
      "questionText": "What's your favorite animal ?",
      "answerText": [
        {'text': "Dog1", 'score': 1},
        {'text': "Dog2", 'score': 3},
        {'text': "Cat1", 'score': 5},
        {'text': "Cat2", 'score': 10}
      ],
    },
    {
      "questionText": "Who is your favorite instructor ?",
      "answerText": [
        {'text': "Me1", 'score': 1},
        {'text': "Me2", 'score': 3},
        {'text': "Me3", 'score': 5},
        {'text': "Me4", 'score': 10}
      ],
    },
  ];
  var _indexQuestion = 0;
  var _totalScore = 0 ;

  void _answerQuestion(int score) {
_totalScore += score ;

    setState(() {
      _indexQuestion = _indexQuestion + 1;
    });
    print(_indexQuestion);
    if (_indexQuestion < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions !");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _indexQuestion < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                indexQuestion: _indexQuestion,
                questions: _questions,
              )
            : Result(_totalScore),
        //: Center(
        //   child: Text("You did it !"),
        // ),
      ),
    );
  }
}
