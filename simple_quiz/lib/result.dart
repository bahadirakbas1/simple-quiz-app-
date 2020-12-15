import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are bad in quizes!';
    } else if (resultScore <= 20) {
      resultText = 'It is acceptable :/';
    } else if (resultScore <= 30) {
      resultText = 'You are awesome :)';
    } else {
      resultText = 'You are so bad :(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz!'),
            textColor: Colors.greenAccent,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
