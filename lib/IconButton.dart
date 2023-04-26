import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final void Function()? onPress;
  final Color color;

  ButtonIcon({this.onPress, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Icon(Icons.favorite_border),
    );
  }
}