// import 'dart:html';

import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:crypto_meta/screens/SignInNUp/SignUpStep2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../UiElements/TextFields/TextFields.dart';

class SignUpCreate1 extends StatefulWidget {
  const SignUpCreate1({super.key});

  @override
  State<SignUpCreate1> createState() => _SignUpCreate1State();
}

class _SignUpCreate1State extends State<SignUpCreate1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.done),
                  Text(
                    " Step One",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 15,
                        ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.done_all,
                      color: Theme.of(context).primaryColorLight),
                  Text(" Step Two",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 15,
                          color: Theme.of(context).primaryColorLight)),
                ],
              ),
              Divider(),
              Container(
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextField1("Name"),
                    SizedBox(
                      height: 15,
                    ),
                    TextField1("Email"),
                    SizedBox(
                      height: 15,
                    ),
                    TextField1("Phone"),
                    SizedBox(
                      height: 15,
                    ),
                    TextField1("Password"),
                  ],
                ),
              ),
              Button1("Next", () {
                print("next pressed...");

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpStepTwo()),
                );
              }, true),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Join with "),
                  Text(
                    "Google",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign In",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
