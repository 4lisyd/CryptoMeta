import 'package:crypto_meta/Screens/Home/Projects/NewProject.dart';
import 'package:crypto_meta/Screens/Home/myProfileSetting.dart';
import 'package:flutter/material.dart';

import 'Chat/HomeChat.dart';
import 'Feed/HomeWall.dart';
import 'Feed/NewPost.dart';
import 'More/HomeMore.dart';
import 'People/HomePeople.dart';
import 'People/NewPeople.dart';
import 'Projects/HomeProjects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;
  PageController pageController = PageController();

  void onTap(int index) {
    setState(() {
      _pageIndex = index;
    });
    // pageController.jumpToPage(index);
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Theme.of(context).primaryColorDark,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () async {
          switch (pageController.page?.toInt()) {
            case 0:
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPost(),
                    ));
                break;
              }

            case 1:
              {
                setState(() {
                  _pageIndex = 2;
                });
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeIn);

                await Future.delayed(const Duration(milliseconds: 1000));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPeople(),
                    ));
                break;
              }
            case 2:
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPeople(),
                    ));
                break;
              }
            case 3:
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewProject(),
                    ));
                break;
              }
            case 4:
              {
                break;
              }
          }

          // open the next screen depending on the current pageView int using controller
        },
      ),
      appBar: AppBar(
        // elevation: 50,
        title: Text("CryptoMeta", style: TextStyle(color: Colors.black)),
        leading: Icon(Icons.currency_bitcoin),
        actions: [
          MaterialButton(
            minWidth: 0,
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProfileSetting(),
                  ));
            },
            child: Icon(
              Icons.person,
              size: 25,
            ),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.notification_important,
            size: 25,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.search,
            size: 25,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          HomeWall(),
          HomeChat(),
          HomePeople(),
          HomeProjects(),
          HomeMore(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.pink,
        fixedColor: Theme.of(context).primaryColorDark,
        unselectedItemColor: Theme.of(context).primaryColorLight,
        currentIndex: _pageIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Wall"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing), label: "Project"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}
