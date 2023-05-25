import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswers,required this.onRestart});
  List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getFinalSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getFinalSummaryData();
    final int numTotalQuestions = questions.length;
    final int numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out $numTotalQuestions questions correctly!',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: onRestart,
              label: Text(
                'Reset Quiz',
                style: GoogleFonts.spaceGrotesk(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              icon: const Icon(
                Icons.refresh_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

