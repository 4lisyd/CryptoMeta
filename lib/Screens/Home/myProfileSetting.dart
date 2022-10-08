import 'dart:convert';
import 'package:crypto_meta/Screens/Intro/Intro.dart';
import 'package:crypto_meta/Services/SignInNUp.dart';
import 'package:crypto_meta/UiElements/Buttons/buttons.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

import '../../UiElements/PopUps/PopUp.dart';

class MyProfileSetting extends StatelessWidget {
  const MyProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(
            width: 100,
            child: Button1("Logout", () async {
              var result = context.read<CurrentUserService>().logOutUser();

              // var decoded = jsonDecode(result.toString());
              var decoded = result;
              if (decoded == null) {
                print("signed out successfully");
                // the api response is null when it logs in succesfully
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Intro(),
                    ));
              } else {
                // else show the error in a pop up

                print(decoded.toString() + "finalfinal");
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) =>
                //       PopUp1(warning: decoded['message'].toString()),
                // );
              }
            }, true)),
      ]),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2 - 10,
              height: 150,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("5",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            ?.copyWith(fontSize: 20)),
                    SizedBox(height: 20),
                    Text("Connects",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(fontSize: 15)),
                  ]),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2 - 10,
              height: 150,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("10",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            ?.copyWith(fontSize: 20)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Referral",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(fontSize: 15)),
                  ]),
            ),
          ]),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              Row(
                children: [],
              )
            ]),
          )
        ],
      ),
    );
  }
}
