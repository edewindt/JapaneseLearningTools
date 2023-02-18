import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(scheme: FlexScheme.hippieBlue),
      /* light theme settings */
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue),
      /* dark theme settings */
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Japanese Learning Tools"),
        ),
      ),
    );
  }
}
