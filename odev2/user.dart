class User {
  final int userId;
  final String userName;
  final String userEmail;
  final String userPassword;
  final bool isTeacher;

  User({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userPassword,
    required this.isTeacher,
  });

  static var user1 = User(
    userId: 1,
    userName: "Berkan Çalıkoğlu",
    userEmail: "student7686@hotmail.com",
    userPassword: "123456",
    isTeacher: false,
  );

  static var user2 = User(
    userId: 2,
    userName: "Halit Enes Kalaycı",
    userEmail: "teacher3242@hotmail.com",
    userPassword: "123456",
    isTeacher: true,
  );
}
