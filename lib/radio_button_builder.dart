import 'package:flutter/material.dart';

enum Direction { horizontal, vertical }

class RadioButtonBuilder extends StatelessWidget {
  const RadioButtonBuilder(
      {super.key, required this.items, this.direction, this.color});
  final List<String> items;
  final Direction? direction;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (direction == Direction.vertical) {
      return Column(children: radioButtons());
    } else {
      return Row(
        children: radioButtons(),
      );
    }
  }

  radioButtons() {
    return items
        .map((item) => Row(
              children: [
                Radio(
                  activeColor: color,
                  value: item,
                  groupValue: item,
                  onChanged: (value) {},
                ),
                Text(item)
              ],
            ))
        .toList();
  }
}
