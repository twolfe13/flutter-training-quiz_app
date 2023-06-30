import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(width: 20),
        // Expanded for optimizing the width
        Expanded(
          child: Column(
            // align column text to the left
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 233, 230, 230),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 217, 255, 2),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
