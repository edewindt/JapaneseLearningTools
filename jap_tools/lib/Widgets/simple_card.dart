import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SimpleCard extends StatefulWidget {
  final String textData;
  final int index;
  final String prefix;
  SimpleCard({
    super.key,
    required this.textData,
    required this.index,
    required this.prefix,
  });

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  bool checked = false;
  Box box = Hive.box('store');
  getBoxValue() async {
    String seeval = await box.get(widget.prefix + widget.index.toString());
    if (seeval == "true") {
      setState(() {
        checked = true;
      });
    } else {
      box.put(widget.prefix + widget.index.toString(), "false");
    }
    return seeval;
  }

  @override
  void initState() {
    getBoxValue();
    super.initState();
  }

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
                      box.put(widget.prefix + widget.index.toString(),
                          value.toString());
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
