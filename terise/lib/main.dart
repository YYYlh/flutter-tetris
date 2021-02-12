import 'package:flutter/material.dart';

import 'package:terise/widgets/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tetris ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HandleGamePage(),
      ),
    );
  }
}

class HandleGamePage extends StatelessWidget {
  const HandleGamePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          UpperPart(
            child: GameScreen(),
          ),
          MiddlePart(),
          BottomPart(),
        ],
      ),
    );
  }
}

class UpperPart extends StatelessWidget {
  final Widget child;
  const UpperPart({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Center(
        child: child,
      ),
    );
  }
}

class MiddlePart extends StatelessWidget {
  const MiddlePart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
    );
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Map<String, Object>> buttonPostionMap = {
      'left': {'top': 40, 'left': 0, 'size': 50, 'color': Colors.blueAccent},
      'up': {'top': 0, 'left': 40, 'size': 50, 'color': Colors.blueAccent},
      'right': {'top': 40, 'left': 80, 'size': 50, 'color': Colors.blueAccent},
      'down': {'top': 80, 'left': 40, 'size': 50, 'color': Colors.blueAccent},
      'rester': {
        'top': 40,
        'left': 180,
        'size': 80,
        'color': Colors.blueAccent
      },
    };
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[],
        ),
      ),
    );
  }
}
