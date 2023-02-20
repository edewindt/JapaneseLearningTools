import 'package:flutter/material.dart';

class SimpleCard extends StatefulWidget {
  final String textData;
  SimpleCard({
    super.key,
    required this.textData,
  });

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  @override
  bool checked = false;
  Widget build(BuildContext context) {
    return Opacity(
      opacity: checked ? .5 : 1,
      child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Checkbox(
                    fillColor: MaterialStatePropertyAll(Colors.red),
                    value: checked,
                    onChanged: (value) {
                      setState(() {
                        checked = value as bool;
                      });
                    }),
                Flexible(child: Text(widget.textData)),
              ],
            ),
          )),
    );
  }
}
