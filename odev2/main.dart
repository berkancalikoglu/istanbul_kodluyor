import 'course.dart';
import 'student.dart';
import 'teacher.dart';

void main() {
  print("Öğrenci adı: ${Student.student1.userId.userName}\n"
      "Kurs adı: ${Course.dart.courseTitle}\n"
      "Kurs açıklaması: ${Course.dart.courseDescription}\n"
      "Eğitmen adı: ${Teacher.teacher1.userId.userName}\n"
      "Kurs görseli: ${Course.dart.courseImage}\n"
      "Kurs ücreti: ${Course.dart.coursePrice}");
}
