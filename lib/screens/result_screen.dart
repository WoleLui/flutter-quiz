import 'dart:math';
import 'package:flutter/material.dart';
import '../dico.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  final int total;

  const ResultScreen({super.key, required this.score, required this.total});

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late bool passed;

  @override
  void initState() {
    super.initState();
    passed = widget.score >= (widget.total / 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Résultat", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Note : ${widget.score} / ${widget.total}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: passed ? Colors.green : Colors.red,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    passed ? "Bravo, vous avez réussi !" : "Dommage, vous n'avez pas réussi.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: passed ? Colors.green : Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    },
                    icon: Icon(Icons.home, size: 18, color: Colors.white),
                    label: Text("Retour à l'accueil", style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Question {
  final String text;
  final List<String> answers;
  final int correctAnswerIndex;

  Question({required this.text, required this.answers, required this.correctAnswerIndex});
}

List<Question> getRandomQuestions(int count) {
  final random = Random();
  List<Map<String, dynamic>> shuffledQuestions = List.from(questionsData)..shuffle(random);
  return shuffledQuestions.take(count).map((q) {
    return Question(
      text: q["question"] as String,
      answers: List<String>.from(q["options"]),
      correctAnswerIndex: (q["correct_index"] as num).toInt(),
    );
  }).toList();
}
