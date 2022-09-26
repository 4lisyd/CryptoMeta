import 'package:flutter/material.dart';
import 'package:map/map.dart';

class NewPeople extends StatelessWidget {
  const NewPeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "People around you",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Map View",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 20)),
                MaterialButton(
                  minWidth: 5,
                  onPressed: () {},
                  child: Icon(Icons.line_weight),
                )
              ]),
              Expanded(
                  child: Container(
                color: Colors.lightBlue.shade50,
                child: Center(
                    child: Text(
                        "a map will be displayed with markers of user around me ")),
              )),
            ],
          )),
    );
  }
}
