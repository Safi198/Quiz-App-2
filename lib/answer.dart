import 'package:quiz_app_2/question.dart';
import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

 @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        onPressed: selectHandler(),
        child: Text(answerText),
      ),
    );
  }
}
