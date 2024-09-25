import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you answered X of Y questions correctly"),
            SizedBox(height: 30),
            Text("list of answers and questions"),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  return "";
                },
                child: Text("Restart the quiz!"))
          ],
        ),
      ),
    );
  }
}
