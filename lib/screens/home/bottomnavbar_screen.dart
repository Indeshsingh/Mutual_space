import 'package:figma_design/screens/home/message_screen.dart';
import 'package:figma_design/screens/home/notification_screen.dart';
import 'package:figma_design/screens/home/profile_screen.dart';
import 'package:figma_design/screens/home/space_screen.dart';
import 'package:flutter/material.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenstate();
}

class _BottomnavbarScreenstate extends State<BottomnavbarScreen> {
  int currentindex = 0;
  List<Widget> pages = [
    SpaceScreen(),
    MessageScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF1F2F6),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/img/Vector (2).png"), label: "Space"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/img/Vector (1).png"), label: "Message"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/img/Vector (3).png"),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/img/Ellipse 1.png"), label: "Profile"),
        ],
        // backgroundColor: Color(0xFFFFFFE5),
        selectedItemColor: Color(0xFF9135F2),
        unselectedItemColor: Color(0xff544262),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
      body: IndexedStack(
        index: currentindex,
        children: pages,
      ),
    );
  }
}
