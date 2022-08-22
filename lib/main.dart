import 'package:flutter/material.dart';
import 'package:quiz_app_2/answer.dart';
import 'package:quiz_app_2/question.dart';

const questions = [
  {
    "questionText": "What's your Uni name?",
    "answerText": ["Comsats Abbotabad", "Comsats Islamabad", "Comsats Wah"]
  },
  {
    "questionText": "What's your favorite Color?",
    "answerText": ["Black", "Green", "Red"]
  },
  {
    "questionText": "What is your favorite animal?",
    "answerText": ["Rabbit", "Lion", "Horse"],
  }
];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _i = 0;

  void _answerQuestion() {
    if(_i<questions.length){
      //
    }
    setState(() {
      _i += 1;
    });
    print(_i);
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Center(child: Text('Quiz App')),
        ),
        body: _i < questions.length ? Column(
          children: [
            Question(questions[_i]['questionText'].toString()),
            ...(questions[_i]["answerText"] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ) : Center(child: Text('You did it'),),
      ),
    );
  }
}
