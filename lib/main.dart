import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answers': ['Dr. Aamo', 'Dr. Karim', 'Dr. Obilikwu', 'Mrs Beatrice'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more Questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // questions = []; this does not work if question is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY First App'),
        ),
        body: _questionIndex < questions.length
            ?
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
