import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_game/control_button.dart';
import 'package:flutter_snake_game/direction.dart';

class ControlPanel extends StatelessWidget {
  final void Function(Direction direction) onTapped;

  const ControlPanel({Key? key, required this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0.0,
        right: 0.0,
        bottom: 50.0,
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(child: Container()),
                ControlButton(
                    icon: Icon(Icons.arrow_left),
                    onPressed: () {
                      onTapped(Direction.left);
                    }),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                ControlButton(
                    icon: Icon(Icons.arrow_drop_up),
                    onPressed: () {
                      onTapped(Direction.up);
                    }),
                SizedBox(
                  height: 70,
                ),
                ControlButton(
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: () {
                      onTapped(Direction.down);
                    }),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                ControlButton(
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {
                      onTapped(Direction.right);
                    }),
                Expanded(child: Container()),
              ],
            ))
          ],
        ));
  }
}
