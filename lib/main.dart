import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:kuis_mobile/login.dart';
import 'package:kuis_mobile/profil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: ProfilePage(
      username: 'putri',
    ));
  }
}
