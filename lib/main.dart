import 'package:flutter/material.dart';
import 'package:project_one/Home/HomeLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primarySwatch: Colors.orange
      ),
      theme:  ThemeData(
        //brightness: Brightness.light,
          primarySwatch: Colors.blueGrey
      ),
      home: HomeLayout(),
    );
  }
}

