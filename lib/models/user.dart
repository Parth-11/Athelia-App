import 'package:athelia/models/hobbies.dart';

class User {
  User({
    required this.userHobbies,
    required this.userName,
    required this.email,
  });

  final String userName;
  List<Hobbies> userHobbies;
  final String email;
}
