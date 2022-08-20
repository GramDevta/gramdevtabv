import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gramdevta/screens/homescreens.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> bottomScreens = [
    const HomeScreens(),
    const Text("Comming soon"),
    const Text("Comming soon"),
    const Text("Comming soon"),
    const Text("Comming soon"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: bottomScreens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: ((value) => setState(() {
              currentIndex = value;
            })),
        backgroundColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.grey,
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: "",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_sharp,
              ),
              backgroundColor: Colors.blue,
              label: "shops"),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble_text_fill,
            ),
            backgroundColor: Colors.blue,
            label: "messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.qrcode_viewfinder,
            ),
            backgroundColor: Colors.blue,
            label: "Scanner",
          ),
        ],
      ),
    );
  }
}
