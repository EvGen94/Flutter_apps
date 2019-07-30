import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var indexQuestion = 0;

  void answerQuestion() {
    indexQuestion = indexQuestion + 1 ;
    print(indexQuestion);
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
            Text(
              questions.elementAt(indexQuestion),
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
