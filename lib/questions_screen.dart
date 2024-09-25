import 'package:flutter/material.dart';

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
    /* alternative to center the content , it can be used like flexbox (space betwen and all that) */
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Questions!!!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: const Text('answer1')),
          ElevatedButton(onPressed: () {}, child: const Text('answer2')),
          ElevatedButton(onPressed: () {}, child: const Text('answer3')),
          ElevatedButton(onPressed: () {}, child: const Text('answer4')),
        ],
      ),
    );
  }
}
