import 'package:flutter/material.dart';

class HomeProjects extends StatefulWidget {
  const HomeProjects({Key? key}) : super(key: key);

  @override
  State<HomeProjects> createState() => _HomeProjectsState();
}

class _HomeProjectsState extends State<HomeProjects> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Projects",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 20,
                        )),
                Icon(Icons.line_weight),
              ],
            ),
            projectItem(projectName: "Travel the world"),
            projectItem(projectName: "On a ducati"),
            projectItem(projectName: "work at home"),
          ],
        ),
      ),
    );
  }
}

class projectItem extends StatelessWidget {
  projectItem({
    required this.projectName,
  });

  String projectName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.work_history_rounded,
                size: 80,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(projectName,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 20)),
                Row(children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_half),
                  Text("4.1"),
                ]),
                Row(
                  children: [
                    Chip(label: Text("Tag name 1")),
                    SizedBox(width: 10),
                    Chip(label: Text("Tag name 2")),
                  ],
                ),
              ]),
            ],
          ),
          Text(
              "sdshdjshd sdjsdkjsjsdhsjkd j hhk h h hjasdkjasdkjaskdj aksdaksjd asjdaksj kasj dkasj dkasj daksjdaks djkasdjaks djakd jkh hj hj..."),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon(
              Icons.thumb_up,
              size: 30,
            ),
            SizedBox(width: 5),
            Text("31k"),
            SizedBox(width: 20),
            Icon(
              Icons.thumb_up,
              size: 30,
            ),
            SizedBox(width: 5),
            Text("1k"),
            SizedBox(width: 20),
          ]),
        ],
      ),
    );
  }
}
