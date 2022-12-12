import 'package:flutter/material.dart';
import 'package:note_pad_flutter/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notepad',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFEB1555),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
        colorScheme: ColorScheme.fromSwatch().copyWith(),
      ),
      home: const HomeScreen(),
    );
  }
}
