import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
          scheme: FlexScheme.bahamaBlue,
          scaffoldBackground: Color.fromARGB(255, 204, 214, 232)),
      /* light theme settings */
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.bahamaBlue),
      /* dark theme settings */
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
