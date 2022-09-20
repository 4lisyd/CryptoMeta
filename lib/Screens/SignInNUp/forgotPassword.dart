import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:crypto_meta/UiElements/TextFields/TextFields.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot password",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 20),
                Text(
                    "Enter your email below & we will send you a reset email."),
                SizedBox(height: 100),
                TextField1("Enter email"),
                SizedBox(height: 20),
              ],
            ),
            Button1("Submit", () {}, true)
          ],
        ),
      ),
    );
  }
}
