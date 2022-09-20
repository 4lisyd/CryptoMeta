import 'package:flutter/material.dart';

class HomeWall extends StatefulWidget {
  const HomeWall({Key? key}) : super(key: key);

  @override
  State<HomeWall> createState() => _HomeWallState();
}

class _HomeWallState extends State<HomeWall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}
