import 'package:crypto_meta/Services/SignInNUp.dart';
import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:crypto_meta/UiElements/TextFields/TextFields.dart';
import 'package:crypto_meta/screens/SignInNUp/forgotPassword.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.mail_lock, size: 100),
              Text(
                "Sign in to your account",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontSize: 30),
              ),
              Column(children: [
                TextField1("Your Email"),
                SizedBox(height: 20),
                TextField1("Password"),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ForgotPassword())));
                        },
                        child: Text(
                          "Forgot Password?",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Button1("Sign in", () {
                CurrentUserService().getHttp();
              }, true),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(decoration: TextDecoration.underline),
                      // style: Theme.of(context).textTheme.,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
