import 'package:quiz_app/model/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'How many months have 28 days?',
    [
      'All of them',
      '2',
      '1',
      'Depends if there is a leap year or not',
    ],
  ),
  QuizQuestion('How many 0.5cm slices can you cut from a bread that is 25cm long?', [
    '50',
    '100',
    '25',
    '75',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget in Flutter?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'The author of world famous Harry Potter series is ______.',
    [
      'J K Rowling',
      'Arundhati Roy',
      'Christopher Nolan',
      'Ryan Gosling',
    ],
  ),
  QuizQuestion(
    'Capital of India is ______.',
    [
      'New Delhi',
      'Mumbai',
      'Kolkata',
      'Surat',
    ],
  ),
  QuizQuestion(
    'Which is the Longest Format of Cricket?',
    [
      'Test',
      'One Day',
      'T20',
      'The Hundred',
    ],
  ),
];
