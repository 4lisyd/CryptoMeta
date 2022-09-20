import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:crypto_meta/screens/SignInNUp/SignIn.dart';
import 'package:crypto_meta/screens/SignInNUp/SignUpStep1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Start by creating an account",
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
          Text(
              "I'm an early bird and I'm a night owl so I'm wise and I have worms.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center),
          const SizedBox(height: 50),
          Container(
            child: Column(children: [
              Button1(
                "Create an account",
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SignUpCreate1())));
                },
                true,
              ),
              const SizedBox(height: 20),
              Button1("Sign In", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignIn())));
              }, false),
              const SizedBox(height: 20),
              Text("Or"),
              SizedBox(height: 20),
              Button1("Join with Google", () {}, false),
            ]),
          ),
        ],
      ),
    );
  }
}
