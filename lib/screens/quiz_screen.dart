import 'package:flutter/material.dart';
import 'package:form/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  final List<Question> questions;
  const QuizScreen({super.key, required this.questions});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;
  final Map<int, int> _selectedAnswers = {};
  final Map<int, bool> _answered = {}; // Indique si une question a été répondue

  void _nextQuestion() {
    if (_currentIndex < widget.questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _prevQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  void _finishQuiz() {
    int score = 0;
    for (int i = 0; i < widget.questions.length; i++) {
      if (_selectedAnswers[i] == widget.questions[i].correctAnswerIndex) {
        score++;
      }
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen(score: score, total: widget.questions.length)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Question question = widget.questions[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Question ${_currentIndex + 1}/${widget.questions.length}",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue, // Fond bleu pour l'AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              question.text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...List.generate(5, (index) {
              bool isSelected = _selectedAnswers[_currentIndex] == index;
              bool isCorrect = index == question.correctAnswerIndex;
              bool shouldShowCorrect = _answered[_currentIndex] == true && isCorrect;

              return GestureDetector(
                onTap: () {
                  if (!_answered.containsKey(_currentIndex)) {
                    setState(() {
                      _selectedAnswers[_currentIndex] = index;
                      _answered[_currentIndex] = true;
                    });
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? (isCorrect ? Colors.green.withOpacity(0.7) : Colors.red.withOpacity(0.7))
                        : (shouldShowCorrect ? Colors.green.withOpacity(0.7) : Colors.grey[200]),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected
                          ? (isCorrect ? Colors.green : Colors.red)
                          : (shouldShowCorrect ? Colors.green : Colors.black26),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        isSelected
                            ? (isCorrect ? Icons.check_circle : Icons.cancel)
                            : (shouldShowCorrect ? Icons.check_circle : Icons.radio_button_unchecked),
                        color: isSelected
                            ? (isCorrect ? Colors.green : Colors.red)
                            : (shouldShowCorrect ? Colors.green : Colors.black54),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          question.answers[index],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentIndex > 0)
                  ElevatedButton.icon(
                    onPressed: _prevQuestion,
                    //icon: Icon(Icons.arrow_back, size: 18),
                    label: Text("Précédent", style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Couleur du texte
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Bords moins arrondis
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                if (_currentIndex < widget.questions.length - 1)
                  ElevatedButton.icon(
                    onPressed: _nextQuestion,
                    //icon: Icon(Icons.arrow_forward, size: 18),
                    label: Text("Suivant", style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Couleur du texte
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Bords moins arrondis
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                if (_currentIndex == widget.questions.length - 1)
                  ElevatedButton.icon(
                    onPressed: _finishQuiz,
                    icon: Icon(Icons.check, size: 18, color: Colors.white,),
                    label: Text("Terminer", style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green, // Couleur du texte
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Bords moins arrondis
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
