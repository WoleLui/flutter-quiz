import 'package:flutter/material.dart';

import '../button_level.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          "Flutter Quiz",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Texte en blanc pour contraster avec le bleu
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue, // Couleur bleue unie pour l'AppBar
        elevation: 4, // Ombre légère sous l'AppBar
      ),*/

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/welcome.gif',
             // width: 300, // Largeur de l'image
              //height: 300, // Hauteur de l'image
              fit: BoxFit.cover, // Comment l'image s'ajuste dans le conteneur
            ),
            SizedBox(height: 20), // Espace entre l'image et le texte
            Text(
              "Bienvenue au Flutter Quiz",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
        ),
      ),
            SizedBox(height: 20),
            QuizButton(mode: 20),
            SizedBox(height: 10),
            QuizButton(mode: 50),
            SizedBox(height: 10),
           // QuizButton(mode: 100),
          ],
        ),
      ),
    );
  }
}
