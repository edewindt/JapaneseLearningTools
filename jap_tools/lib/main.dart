import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jap_tools/Screens/home_screen.dart';

void main() async {
  var path = Directory.current.path;
  Hive..init(path);
  Box box = await Hive.openBox('test');
  box.put('hello', 'hello');
  var test = box.get('hello');
  print(test);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkmode = false;
  void darkmodeToggle() {
    setState(() {
      darkmode = !darkmode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
          scheme: FlexScheme.bahamaBlue,
          scaffoldBackground: Color.fromARGB(255, 204, 214, 232)),
      /* light theme settings */
      darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.bahamaBlue, primary: Colors.red),
      /* dark theme settings */
      themeMode: darkmode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(toggleDarkmode: () => darkmodeToggle()),
    );
  }
}
