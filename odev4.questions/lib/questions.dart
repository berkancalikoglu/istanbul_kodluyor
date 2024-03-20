import 'package:flutter/material.dart';
import 'package:odev3/data/questions_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _questionIndex = 0;
  int _trueAnswer = 0;
  int _falseAnswer = 0;

  void _checkAnswer(String selectedAnswer) {
    setState(() {
      String trueAnswer = questions[_questionIndex].correctAnswer;

      if (selectedAnswer == trueAnswer) {
        _trueAnswer++;
      } else {
        _falseAnswer++;
      }
      _nextQuestion();
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex++;
      } else {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Column(
                  children: [
                    Text(
                      "Doğru Cevap: $_trueAnswer",
                      style: const TextStyle(color: Colors.green),
                    ),
                    Text("Yanlış Cevap: $_falseAnswer",
                        style: const TextStyle(color: Colors.red)),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _questionIndex = 0;
                          _trueAnswer = 0;
                          _falseAnswer = 0;
                        });
                        Navigator.pop(context);
                      },
                      child: const Text("Baştan başlat"))
                ],
              );
            });
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Quiz App",
        style: TextStyle(color: Colors.white),
      )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
            child: Text(
              questions[_questionIndex].question,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions[_questionIndex].answers.length,
              itemBuilder: (context, index) {
                final answer = questions[_questionIndex].answers[index];
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 90.0, right: 90.0, top: 12.0),
                  child: ElevatedButton(
                      onPressed: () => _checkAnswer(answer),
                      child: Text(
                        answer,
                        style: TextStyle(
                            color: Colors.blue.shade400,
                            fontWeight: FontWeight.w800),
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
