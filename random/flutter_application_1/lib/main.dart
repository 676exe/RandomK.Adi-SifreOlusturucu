import 'package:flutter/material.dart';
import 'views/user_view.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Bilgi Oluşturucu',
      home: UserView(),
    );
  }
}