import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;
  const Square({Key key, this.color = Colors.black12}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 1, style: BorderStyle.solid)),
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(1),
      child: Container(
        width: 8,
        height: 8,
        color: color,
      ),
    );
  }
}
