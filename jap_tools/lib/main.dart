import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jap_tools/Screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  Box box = await Hive.openBox('store');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkmode = false;
  Box box = Hive.box('store');
  void darkmodeToggle() {
    setState(() {
      if (darkmode) {
        box.put('darkmode', 'false');
        darkmode = !darkmode;
        print(darkmode);
      } else {
        box.put('darkmode', 'true');
        darkmode = !darkmode;
        print(darkmode);
      }
    });
  }

  void determineMode() async {
    var mode = await box.get('darkmode');
    setState(() {
      if (mode == 'true') {
        darkmode = true;
      } else {
        darkmode = false;
      }
    });
  }

  @override
  void initState() {
    determineMode();
    super.initState();
  }

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
