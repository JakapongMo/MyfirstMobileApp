import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            //Spread it to each element of surrounding list(in this case is children)
            ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList()
            // ...(questions[questionIndex]['answers'] as List<String>).map((answer) => Answer(_answerQuestion, answer)).toList()
          ],
        );
  }
}