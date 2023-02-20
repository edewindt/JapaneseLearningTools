import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RomajiWidget extends StatelessWidget {
  final String title;
  final String sound;
  final double padding;
  final bool visible;
  const RomajiWidget(
      {super.key,
      required this.title,
      required this.sound,
      this.visible = true,
      this.padding = 0.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () async {
        final player = AudioPlayer();
        player.play(AssetSource(title + '.mp3'));
      },
      child: Card(
        child: Center(
            child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 70),
              ),
              Text(
                visible ? sound : "",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
