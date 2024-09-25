import 'package:flutter/material.dart';
import './answer_button.dart';
import './data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestions = questions[0];

    /* alternative to center the content , it can be used like flexbox (space betwen and all that) */
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestions.answers.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
/* named cunjuntion safe us the need to remember the order of each element in the recalled element */