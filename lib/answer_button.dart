import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 58, 24, 102),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 18,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          side: const BorderSide(
            width: 3,
            color: Colors.white,
          )),
      child: Text(answerText),
    );
  }
}
