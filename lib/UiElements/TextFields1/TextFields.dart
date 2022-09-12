import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextField1 extends StatelessWidget {
  const TextField1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: TextField(),
    );
  }
}
