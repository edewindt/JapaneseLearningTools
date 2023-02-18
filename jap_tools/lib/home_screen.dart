import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1024),
            margin: EdgeInsets.only(top: 40),
            child: ListView(children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Hiragana/ひらがな")),
                ),
              )
            ]),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Japanese Learning Tools"),
        ));
  }
}
