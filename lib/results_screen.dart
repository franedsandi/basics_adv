import 'package:flutter/material.dart';
import './data/questions.dart'

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List <Map<String, Object>> getSumaryData(){
    final List <Map<String, Object>>  summary =[];

    for(var i=0; i < chosenAnswers.length ; i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer':questions[i].answers[0],
        'choosen_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("you answered X of Y questions correctly"),
            const SizedBox(height: 30),
            const Text("list of answers and questions"),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart the quiz!"),
            )
          ],
        ),
      ),
    );
  }
}
