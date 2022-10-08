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
  TextEditingController _editingControllerName = TextEditingController();
  TextEditingController _editingControllerEmail = TextEditingController();
  TextEditingController _editingControllerPhone = TextEditingController();
  TextEditingController _editingControllerPassword = TextEditingController();
  PageController pageViewC = PageController();
  int pageState = 0;

  // TextEditingController _editingControllerEmail = TextEditingController();

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
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 28)),
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
                      color: (pageState == 1)
                          ? Theme.of(context).primaryColorDark
                          : Theme.of(context).primaryColorLight),
                  Text(" Step Two",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 15,
                          color: (pageState == 1)
                              ? Theme.of(context).primaryColorDark
                              : Theme.of(context).primaryColorLight)),
                ],
              ),
              Divider(),
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: pageViewC,
                    children: [
                      // width: MediaQuery.of(context).size.width,
                      Column(
                        children: [
                          TextField1("Name", _editingControllerName),
                          SizedBox(
                            height: 15,
                          ),
                          TextField1("Email", _editingControllerEmail),
                          SizedBox(
                            height: 15,
                          ),
                          TextField1("Phone", _editingControllerPhone),
                          SizedBox(
                            height: 15,
                          ),
                          TextField1("Password", _editingControllerPassword),
                        ],
                      ),

                      Column(children: [
                        Text(
                          "How do you see your participation in industry?",
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.headline1?.copyWith(
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
                      ]),
                    ]),
              ),
              Button1(pageState == 0 ? "Next" : "Sign up", () {
                print("next pressed...");

                if (pageState == 0) {
                  setState(() {
                    pageViewC.jumpToPage(1);
                    pageState = 1;
                  });
                } else {
                  // check for all parameter validations on client side

                }

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SignUpStepTwo()),
                // );
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
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
