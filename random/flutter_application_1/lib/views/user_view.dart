import 'package:flutter/material.dart';
import '../controllers/user_controller.dart';
import '../models/user_model.dart';

class UserView extends StatefulWidget {
  @override 
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final UserController _userController = UserController();
  User? _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Bilgi Oluşturucu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if  (_user != null)
            Column(
              children: [
                Text('Kullanıcı Adı: ${_user!.username}'),
                Text('Password: ${_user!.password}'),
              ],
            ),
           SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateUser, 
              child: Text('Oluştur'), 
            ),
          ],
        ),
      ),
    );
  }

  void _generateUser() {
    setState(() {
      _user = _userController.generateRandomUser();
    });
  }
}