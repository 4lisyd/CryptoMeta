import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:crypto_meta/UiElements/TextFields/TextFields.dart';
import 'package:flutter/material.dart';

class NewProject extends StatefulWidget {
  const NewProject({Key? key}) : super(key: key);

  @override
  State<NewProject> createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Project",
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: Column(
        children: [
          Container(),
          TextField1("hintText"),
          Container(
            child: TextField1("hintText"),
            height: 400,
          ),
          TextField1("hintText"),
          TextField1("hintText"),
          TextField1("hintText"),
          Button1("Create", () {}, true)
        ],
      ),
    );
  }
}
