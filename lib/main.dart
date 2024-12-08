import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:nexara/consts.dart';
import 'package:nexara/themes.dart';
import 'package:nexara/welcome.dart';
void main()  {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
      home: const MyApp1(),
    );
  }
}