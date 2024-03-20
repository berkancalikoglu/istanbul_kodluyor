import 'package:flutter/material.dart';
import 'package:odev3/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade200,
        ),
        colorScheme: ColorScheme.fromSeed(
            background: Colors.blue.shade100, seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: QuestionScreen(),
    );
  }
}
