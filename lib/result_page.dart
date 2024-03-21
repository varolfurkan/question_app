import 'package:flutter/material.dart';
import 'package:question_app/questions.dart';

class ResultScreen extends StatefulWidget {
  final int correctAnswers;
  final int wrongAnswers;
  const ResultScreen({super.key, required this.correctAnswers, required this.wrongAnswers});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: const Color(0xFF212121),
        appBar: AppBar(
          title: const Text("Quiz App", style: TextStyle(color: Colors.white),),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF212121),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Doğru Cevaplar: ${widget.correctAnswers}",style: const TextStyle(color: Colors.white),),
              const SizedBox(height: 12),
              Text("Yanlış Cevaplar: ${widget.wrongAnswers}",style: const TextStyle(color: Colors.white),),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const QuestionsScreen()),
                        (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent),
                child: const Text("Yeniden Başla",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
