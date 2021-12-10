import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: Text('This is my default text!'),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        'Black ',
        'Red ',
        'Green',
        'White'
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        'Tiger ',
        'Snake ',
        'Lion',
        'Elephant'
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        'Max ',
        'Max ',
        'Max',
        'Max',
      ],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more question!");
    } else {
      print("No more questions");
    }
  }

  Widget build(BuildContext context) {
    // var dummy = [
    //   'hello'
    // ];
    // dummy.add('Max');
    // print(dummy);

    //question  = []; this does not work if questions is const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions)
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}

//40-41 me e shiku prap
