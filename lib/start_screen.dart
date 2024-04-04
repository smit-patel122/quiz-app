import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(
              'images/logo2.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Let\'s Test Your Knowledge In Amazing Way!',
            style: GoogleFonts.spaceGrotesk(color: Colors.white, fontSize: 18),
          ),
          TextButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(25)),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.spaceGrotesk(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
