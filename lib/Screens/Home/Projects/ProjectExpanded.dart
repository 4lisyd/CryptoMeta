import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ProjectDetail extends StatefulWidget {
  const ProjectDetail({Key? key}) : super(key: key);

  @override
  State<ProjectDetail> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends State<ProjectDetail> {
  @override
  Widget build(BuildContext context) {
    var _pageViewController = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Name",
            style:
                Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20)),
        actions: [
          Icon(
            Icons.heart_broken_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Center(
            child: Text("12k",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 20,
                    )),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(5),
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    _pageViewController.jumpToPage(0);
                  });
                },
                child: Text(
                  "Details",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              width: MediaQuery.of(context).size.width / 3 - 10,
            ),
            Container(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    _pageViewController.jumpToPage(1);
                  });
                },
                child: Text(
                  "Reviews",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              width: MediaQuery.of(context).size.width / 3 - 10,
            ),
            Container(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    _pageViewController.jumpToPage(2);
                  });
                },
                child: Text(
                  "Discussion",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              width: MediaQuery.of(context).size.width / 3 - 10,
            ),
          ]),
        ),
        Expanded(
            child: PageView(
          controller: _pageViewController,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              // color: Colors.pink,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Divider(
                        thickness: 5,
                        color: Colors.black,
                      ),
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "sdsds sd djskds kjskd jskdjksdj kjsk jks jksjdksjd kjdksj ksjsdsds sd djskds kjskd jskdjksdj kjsk jks jksjdksjd kjdksj ksjsdsds sd djskds kjskd jskdjksdj kjsk jks jksjdksjd kjdksj ksjsdsds sd djskds kjskd jskdjksdj kjsk jks jksjdksjd kjdksj ksjsdsds sd djskds kjskd jskdjksdj kjsk jks jksjdksjd kjdksj ksjsdsds sd djskds kjskd jskdjksdj kjsk jks jksjdksjd kjdksj ksj js"),
                          SizedBox(height: 20),
                          Text("Tags",
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(fontSize: 20)),
                          SizedBox(height: 20),
                          Row(children: [
                            Chip(label: Text("label1")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(label: Text("label2")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(label: Text("label3")),
                          ]),
                          SizedBox(height: 20),
                          Text("Links",
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(fontSize: 20)),
                          SizedBox(height: 20),
                          Text("https://lipsum.com/feed/html"),
                        ],
                      ),
                    ),
                  ]),
            ),

            // reviews

            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        child: Divider(
                          thickness: 5,
                          color: Colors.black,
                        ),
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Rating",
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          ?.copyWith(fontSize: 25)),
                                  Column(
                                    children: [
                                      Icon(Icons.star_half, size: 80),
                                      Text(
                                        "3.5",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            ?.copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "this box with be used to calculate and display ratings using maths",
                                  ),
                                  SizedBox(height: 20),
                                  ratingFeedback(),
                                  ratingFeedback(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),

            // discussion

            Container(
              padding: EdgeInsets.only(right: 20),
              // color: Colors.pink,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Container(
                  child: Divider(
                    thickness: 5,
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.width / 4,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BubbleNormal(
                          text: 'Hi, is the contract really good?',
                          isSender: false,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'is it feasible enough?',
                          isSender: false,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'It sure is ',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Can i ask more questions?',
                          isSender: false,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                        BubbleNormal(
                          text: 'Sure!',
                          isSender: true,
                          color: Color(0xFFE8E8EE),
                          tail: true,
                          sent: true,
                        ),
                      ],
                    ),
                  ),
                ),
                MessageBar(
                  onSend: (_) => print(_),
                  actions: [
                    InkWell(
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 24,
                      ),
                      onTap: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 24,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ))
      ]),
    );
  }
}

class ratingFeedback extends StatelessWidget {
  const ratingFeedback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      height: 100,
      // color: Colors.pink,
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.person),
              Text("Michael Scot"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Text("4.1"),
            ],
          ),
          Text(
              "this boxa adja kslda lskdaslkd jaskdjaksdaks aks jkjja kslda lskdaslkd jaskdjaksdaks aks jkjja kslda lskdaslkd jaskdjaksdaks aks jkjkasjkte and d"),
        ],
      ),
    );
  }
}
