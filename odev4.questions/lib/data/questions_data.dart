import 'package:odev3/models/question.dart';

const questions = [
  Question(
      question:
          "Aşağıdakilerden hangisi flutterda state'i update eden fonksiyondur?",
      answers: [
        "setState",
        "constructor",
        "readState",
        "writeState",
        "refreshState",
        "updateState"
      ],
      correctAnswer: "setState"),
  Question(
      question: "Flutter hangi dili kullanır?",
      answers: ["javascript", "dart", "c#", "java", "Swift"],
      correctAnswer: "dart"),
  Question(
      question:
          "Hangi widget, flutter uygulamalarında arayüz elemanlarını kolayca düzenlememize ve hızlıca güncellememize olanak tanır?",
      answers: ["Scaffold", "Container", "ListView", "Column"],
      correctAnswer: "Column"),
  Question(
      question:
          "Flutter uygulamalarında bir sayfanın tamamını kaplamak için hangi widget kullanılır?",
      answers: ["Box", "Container", "Scaffold"],
      correctAnswer: "Scaffold"),
];
