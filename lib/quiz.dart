import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionMap;
  final int index;
  final VoidCallback clickHandler;

  const Quiz(this.questionMap, this.index, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          Question(questionMap[index]['text'] as String),
          ...(questionMap[index]['answers'] as List<String>).map((answer) {
            return Answer(clickHandler, answer);
          }).toList(),
        ],
      ),
    ));
  }
}
