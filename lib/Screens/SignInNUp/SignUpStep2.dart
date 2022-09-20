import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import 'package:crypto_meta/UiElements/TextFields/TextFields.dart';
import 'package:crypto_meta/screens/Home/HomeScreen.dart';
import 'package:flutter/material.dart';

class SignUpStepTwo extends StatefulWidget {
  const SignUpStepTwo({Key? key}) : super(key: key);

  @override
  State<SignUpStepTwo> createState() => _SignUpStepTwoState();
}

class _SignUpStepTwoState extends State<SignUpStepTwo> {
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
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: 15),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.done_all),
                  Text(
                    " Step Two",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 15,
                        ),
                    // style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    //     fontSize: 15, color: Theme.of(context).primaryColorLight),
                  ),
                ],
              ),
              Divider(),
              Text(
                "How do you see your participation in industry?",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 18,
                    ),
              ),
              participationSwitches("Trader"),
              participationSwitches("Exchanger"),
              participationSwitches("Investor"),
              participationSwitches("Code/Technical Person"),
              participationSwitches("Influencer"),
              Container(
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [],
                ),
              ),
              Button1("Sign Up", () {
                print("next pressed...");

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }, true),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("I accept the terms & conditions"),
                  Switch(
                    onChanged: (value) {},
                    value: false,
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text("By signing up you agree to our "),
              //     Text(
              //       "Privacy, Policy & Terms",
              //       style: Theme.of(context)
              //           .textTheme
              //           .bodyText1
              //           ?.copyWith(decoration: TextDecoration.underline),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class participationSwitches extends StatelessWidget {
  participationSwitches(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Switch(
          onChanged: (value) {},
          value: false,
        ),
      ],
    );
  }
}
