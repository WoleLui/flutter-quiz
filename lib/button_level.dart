
import 'package:flutter/material.dart';
import 'package:form/screens/quiz_screen.dart';
import 'package:form/screens/result_screen.dart';

class QuizButton extends StatelessWidget {
  final int mode;
  const QuizButton({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue, // Couleur bleue unie pour le fond
        borderRadius: BorderRadius.circular(25), // Bordures légèrement arrondies
        border: Border.all(
          color: Colors.blueAccent, // Bordure plus foncée
          width: 2, // Épaisseur de la bordure
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.3), // Ombre douce et légère
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4), // Position de l'ombre
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 35),
          backgroundColor: Colors.transparent, // Fond transparent pour laisser place à la couleur
          shadowColor: Colors.transparent, // Pas d'ombre supplémentaire
          elevation: 0, // Pas d'élévation supplémentaire
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // Bordures arrondies légères
          ),
        ),
        onPressed: () {
          List<Question> questions = getRandomQuestions(mode);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizScreen(questions: questions)),
          );
        },
        child: Text(
          "Démarrer $mode questions",
          style: TextStyle(
            color: Colors.white, // Texte en blanc pour bien contraster
            fontSize: 20,
            fontWeight: FontWeight.w700, // Texte audacieux
            letterSpacing: 1.2, // Espacement des lettres
          ),
        ),
      ),
    );




  }
}


