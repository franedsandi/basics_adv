import 'package:flutter/material.dart';
import './start_screen.dart';
import './questions_screen.dart';
import './data/questions.dart';
import './results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  /* Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  } */
  var activeScreen = "start-screen";
  void switchScreen() {
    setState(() {
      /*  activeScreen = const QuestionsScreen(); */
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          activeScreen = "result-screen";
          selectedAnswers = [];
        },
      );
    }
  }

  @override
  Widget build(context) {
    /* store the expesion in a veriable */
    /* final screenWidget = activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(); */
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.deepOrange,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          /* ternary operatioon */
          child: screenWidget,
        ),
      ),
    );
  }
}
