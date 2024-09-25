import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          /* Opacity(
            opacity: 0.7,
            child: Image.asset('assets/images/quiz-logo.png', width: 300),
          ), */
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Fluetter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(
                  width: 3,
                  color: Colors.white,
                )),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
/* label substitide dhild on icon buttons */