import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import '. /quiz.dart';
import './result.dart';
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

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 10
        },
        {
          'text': 'Red ',
          'score': 5
        },
        {
          'text': 'Green',
          'score': 3
        },
        {
          'text': 'White',
          'score': 1
        }
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {
          'text': 'Tiger ',
          'score': 3
        },
        {
          'text': 'Snake ',
          'score': 11
        },
        {
          'text': 'Lion',
          'score': 4
        },
        {
          'text': 'Elephant',
          'score': 5
        }
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {
          'text': 'Max ',
          'score': 1
        },
        {
          'text': 'Max ',
          'score': 1
        },
        {
          'text': 'Max ',
          'score': 1
        },
        {
          'text': 'Max ',
          'score': 1
        },
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
    _totalScore += score;

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

//43
