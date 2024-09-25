import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  var currentQuestionsIndex = 0;

  void answerQuestion() {
    /* currentQuestionsIndex = currentQuestionsIndex + 1; */
    /* currentQuestionsIndex +=1; */ /* shorcut for the previus one */
    setState(() {
      currentQuestionsIndex++; /*  currentQuestionsIndex--; to decrese*/
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionsIndex];

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
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 252, 230, 230),
              ),
              /* const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ), */
            ),
            const SizedBox(height: 30),
            ...currentQuestions.getShuffleAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: answerQuestion,
              );
            }),
            /* chaining events */
          ],
        ),
      ),
    );
  }
}
/* named cunjuntion safe us the need to remember the order of each element in the recalled element */