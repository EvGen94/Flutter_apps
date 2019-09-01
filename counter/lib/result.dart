import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  String get resultPhrese {
  String resultsText = 'You did it !';

  if (resultScore <= 5){
  resultsText = "you are awsome ! " ;}
  else if(resultScore<= 10){resultsText = "you are awsome ! " ;}
  else if(resultScore<= 15){resultsText = "you are dont' know ! " ;}
  else {resultsText = "you are so bad ! " ;}
  
  return resultsText;
}
  @override
  Widget build(BuildContext context) {
    return
     Center(
      child: Text(
        resultPhrese,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
