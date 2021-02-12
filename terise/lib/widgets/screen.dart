import 'package:flutter/material.dart';
import 'package:terise/widgets/square.dart';
import '../map/index.dart';

class GameScreen extends StatefulWidget {
  GameScreen({Key key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Widget draw() {
    Color color = Colors.black26;
    List<Widget> column = [];
    for (int i = 0, len = mapData.length; i < len; i++) {
      List<Square> row = [];
      for (int j = 0, len = mapData[i].length; j < len; j++) {
        color = mapData[i][j] == 0 ? Colors.black12 : Colors.black;
        row.add(Square(
          color: color,
        ));
      }
      column.add(Row(
        children: row,
      ));
    }
    return Column(
      children: column,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xa0ac8500),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: draw(),
          ),
          Container(
            width: 120,
            child: Text(''),
          )
        ],
      ),
    );
  }
}
