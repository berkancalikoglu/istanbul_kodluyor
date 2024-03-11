import 'user.dart';

class Student {
  final int studentId;
  final User userId;

  Student({
    required this.studentId,
    required this.userId,
  });

  static var student1 = Student(
    studentId: 1,
    userId: User.user1,
  );
}
