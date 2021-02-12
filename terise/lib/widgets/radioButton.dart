import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  final double size;
  final Color color;
  final Function onPressed;
  const RadioButton({Key key, this.size, this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        child: RaisedButton(
          onPressed: onPressed,
          color: color,
          shape: CircleBorder(side: BorderSide(width: 1)),
        ));
  }
}
