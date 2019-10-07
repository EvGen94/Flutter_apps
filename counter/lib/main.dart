import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
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
      'questionText': 'What\'s your favorite company?',
      'answers': [
        {'text': 'Samsonopt', 'score': 15},
        {'text': 'Shopingator', 'score': 8},
        {'text': 'Officemag', 'score': 5},
        {'text': 'Komus', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite office?',
      'answers': [
        {'text': 'Akademika Tupoleva street 15', 'score': 4},
        {'text': 'Nizhnyaya Krasnoselskaya street 14', 'score': 8},
        {'text': 'Domodedovo sk1', 'score': 10},
        {'text': 'Domodedovo sk3', 'score': 12},
      ],
    },
    {
      'questionText': 'Which\'s your favorite department ?',
      'answers': [
        {'text': 'Supply chain management and logostics technology assurance', 'score': 3},
        {'text': 'Supply chain management and logostics technology assurance', 'score': 3},
        {'text': 'Supply chain management and logostics technology assurance', 'score': 3},
        {'text': 'Supply chain management and logostics technology assurance', 'score': 3},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
