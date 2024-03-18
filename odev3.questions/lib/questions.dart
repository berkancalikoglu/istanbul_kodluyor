import 'package:flutter/material.dart';
import 'package:odev3/data/questions_data.dart';
import 'package:odev3/models/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _soruIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Question App")),
      body: _soruIndex < questions.length
          ? _soruGoster(questions[_soruIndex])
          : const Center(child: Text("BİTTİ")),
    );
  }

  Widget _soruGoster(Question soru) {
    return Column(
      children: [
        Text(soru.question),
        ListView.builder(
          shrinkWrap: true,
          itemCount: soru.answers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(soru.answers[index]),
              onTap: () {
                setState(() {
                  if (_soruIndex < questions.length - 1) {
                    _soruIndex++;
                  } else {
                    // Tüm sorular cevaplandı
                    _soruIndex = questions.length;
                  }
                });
              },
            );
          },
        ),
      ],
    );
  }
}
