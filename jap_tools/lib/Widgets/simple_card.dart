import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SimpleCard extends StatefulWidget {
  final String textData;
  final int index;
  SimpleCard({
    super.key,
    required this.textData,
    required this.index,
  });

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  Box box = Hive.box('store');
  @override
  void initState() {
    box.putAt(widget.index, "false");
    super.initState();
  }

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
