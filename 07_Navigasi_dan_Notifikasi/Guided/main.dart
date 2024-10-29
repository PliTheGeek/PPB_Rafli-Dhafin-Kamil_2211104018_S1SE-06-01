// main.dart
import 'package:flutter/material.dart';
import 'mypage.dart';
import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<User> users = [
    User(name: 'Agil', age: 25),
    User(name: 'Aubrey', age: 30),
    User(name: 'Ujang', age: 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index].name),
            subtitle: Text('Age: ${users[index].age}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyPage(user: users[index])),
              );
            },
          );
        },
      ),
    );
  }
}
