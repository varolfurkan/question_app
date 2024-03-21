import 'package:flutter/material.dart';
import 'package:question_app/result_page.dart';
import 'data/question_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;

  void _checkAnswer(String selectedAnswer) {
    setState(() {
      String correctAnswer = questions[_currentQuestionIndex].correctAnswer;

      if (selectedAnswer == correctAnswer) {
        _correctAnswers++;
      } else {
        _wrongAnswers++;
      }

      _nextQuestion();
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        _navigateToResultScreen();
      }
    });
  }

  void _navigateToResultScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          correctAnswers: _correctAnswers,
          wrongAnswers: _wrongAnswers,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        title: const Text("Quiz App", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF212121),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${_currentQuestionIndex + 1}. ${questions[_currentQuestionIndex].question}",
                style: const TextStyle(fontSize: 20,color: Colors.white),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment:  CrossAxisAlignment.stretch,
                children: questions[_currentQuestionIndex].answers.map((answer) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 6,bottom: 6),
                    child: ElevatedButton(
                      onPressed: () => _checkAnswer(answer),
                      child: Text(answer, style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
