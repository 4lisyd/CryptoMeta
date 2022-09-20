import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button1 extends StatelessWidget {
  Button1(
    this.buttonText,
    this.pressFunc,
    this.darkOrNot,
  );

  String buttonText;
  dynamic pressFunc;
  bool darkOrNot;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressFunc,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 80,
        height: MediaQuery.of(context).size.height / 14,
        decoration: BoxDecoration(
            color: darkOrNot
                ? Theme.of(context).primaryColorDark
                : Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          buttonText,
          style: darkOrNot
              ? Theme.of(context).textTheme.button
              : Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
