import 'dart:math';
import '../models/user_model.dart';

class UserController {
  final String _chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final Random _rnd = Random();


 String _generateRandomString(int length) => String.fromCharCodes(
        Iterable.generate(
          length,
          (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)),
        ),
      );


  User generateRandomUser() {
    String username = _generateRandomString(8);
    String password = _generateRandomString(12);
    return User(username: username, password: password);
  }
}