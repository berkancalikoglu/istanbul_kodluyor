import 'user.dart';

class Teacher {
  final int teacherId;
  final User userId;

  Teacher({
    required this.teacherId,
    required this.userId,
  });

  static var teacher1 = Teacher(
    teacherId: 1,
    userId: User.user2,
  );
}
