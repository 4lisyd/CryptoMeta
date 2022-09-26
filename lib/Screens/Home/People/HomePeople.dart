import 'package:flutter/material.dart';

class HomePeople extends StatefulWidget {
  const HomePeople({Key? key}) : super(key: key);

  @override
  State<HomePeople> createState() => _HomePeopleState();
}

class _HomePeopleState extends State<HomePeople> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(0);
                  });
                },
                child: Text("Connections"),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(1);
                  });
                },
                child: Text("Requests"),
              ),
            ],
          ),
        ),
        Divider(),
        Expanded(
          child: Container(
            // color: Colors.pink,
            child: PageView(
              controller: pageController,
              children: [
                Container(
                  // color: Colors.pink,
                  child: Column(
                    children: [
                      connectionItem(context),
                      connectionItem(context),
                      connectionItem(context),
                    ],
                  ),
                ),
                Container(
                  child: Column(children: [
                    requestItem(context),
                    requestItem(context),
                    requestItem(context),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container connectionItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 70,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Name Name"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Chip(
                            label: Text("Tags"),
                          ),
                          Chip(
                            label: Text("Tags"),
                          ),
                        ],
                      ),
                    ]),
              ],
            ),
          ),
          Icon(
            Icons.more_vert,
            size: 35,
            color: Theme.of(context).primaryColorLight,
          ),
        ],
      ),
    );
  }
}

Container requestItem(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Icon(
                Icons.person,
                size: 70,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Name Name"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Chip(
                          label: Text("Tags"),
                        ),
                        Chip(
                          label: Text("Tags"),
                        ),
                      ],
                    ),
                  ]),
            ],
          ),
        ),
        Chip(label: Text("Accept")),
        Chip(label: Text("Reject")),
      ],
    ),
  );
}
