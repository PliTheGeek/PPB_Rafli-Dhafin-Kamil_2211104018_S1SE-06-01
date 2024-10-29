// mypage.dart
import 'package:flutter/material.dart';
import 'models/user.dart';

class MyPage extends StatelessWidget {
  final User user;

  MyPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Center(
        child: Text('Hello, ${user.name}! Usia Kamu ${user.age} Dasar Tua.'),
      ),
    );
  }
}
