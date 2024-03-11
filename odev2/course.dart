import 'teacher.dart';

class Course {
  final int courseId;
  final String courseTitle;
  final String courseDescription;
  final Teacher courseTeacher;
  final String? courseImage;
  final double? coursePrice;

  Course({
    required this.courseId,
    required this.courseTitle,
    required this.courseDescription,
    required this.courseTeacher,
    this.courseImage,
    this.coursePrice,
  });

  static var dart = Course(
    courseId: 1,
    courseTitle: "Dart Öğreniyoruz",
    courseDescription: "Sıfırdan zirveye Dart kursu",
    courseTeacher: Teacher.teacher1,
    courseImage: "https://picsum.photos/536/354",
    coursePrice: 499.99,
  );
}
