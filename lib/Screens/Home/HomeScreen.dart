import 'package:crypto_meta/screens/Home/HomeChat.dart';
import 'package:crypto_meta/screens/Home/HomeMore.dart';
import 'package:crypto_meta/screens/Home/HomePeople.dart';
import 'package:crypto_meta/screens/Home/HomeProjects.dart';
import 'package:crypto_meta/screens/Home/HomeWall.dart';
import 'package:flutter/material.dart';

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
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 50,
        title: Text("CryptoMeta", style: TextStyle(color: Colors.black)),
        leading: Icon(Icons.currency_bitcoin),
        actions: [
          Icon(
            Icons.person,
            size: 25,
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
