import 'package:flutter/material.dart';

class PopUp1 extends StatelessWidget {
  PopUp1({
    required this.warning,
  });

  String warning = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(warning.toString()),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text("Hello"),
        ],
      ),
      actions: <Widget>[
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
}
