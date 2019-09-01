import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHendler;

  Result(this.resultScore, this.resetHendler);
  String get resultPhrese {
    String resultsText = 'You did it !';

    if (resultScore <= 5) {
      resultsText = "you are awsome ! ";
    } else if (resultScore <= 10) {
      resultsText = "you are awsome ! ";
    } else if (resultScore <= 15) {
      resultsText = "you are dont' know ! ";
    } else {
      resultsText = "you are so bad ! ";
    }

    return resultsText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrese,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart Quiz!"),
            textColor: Colors.blue,
            onPressed: resetHendler,
          ),
        ],
      ),
    );
  }
}
