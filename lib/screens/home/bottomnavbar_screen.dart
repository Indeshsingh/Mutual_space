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
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_vert_circle_sharp), label: "Space"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart_sharp), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), label: "Profile"),
        ],
        // backgroundColor: Color(0xFFFFFFE5),
        // selectedItemColor: Color(0xFF3D3849),
        // unselectedItemColor: Colors.grey,
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
