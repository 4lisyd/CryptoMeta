import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../UiElements/TextFields1/TextFields.dart';

class SignUpCreate extends StatefulWidget {
  const SignUpCreate({super.key});

  @override
  State<SignUpCreate> createState() => _SignUpCreateState();
}

class _SignUpCreateState extends State<SignUpCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Create an account",
                style: Theme.of(context).textTheme.headline1),
            Text("Fill the form to register your account",
                style: Theme.of(context).textTheme.bodyText1),
            Row(
              children: [
                Icon(Icons.done),
                Text(
                  "Step one",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20,
                      ),
                ),
                SizedBox(width: 20),
                Icon(Icons.done_all),
                Text(
                  "Step two",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20,
                      ),
                ),
              ],
            ),
            TextField1(),
            Button1("Next", () {}, true),
          ],
        ),
      ),
    );
  }
}
