import 'package:athelia/models/hobbies.dart';
import 'package:intl_phone_field/phone_number.dart';

class User {
  User({
    required this.userHobbies,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.goodReads,
  });

  final String userName;
  List<Hobbies> userHobbies;
  final String email;
  PhoneNumber phoneNumber;
  final String goodReads;
}
