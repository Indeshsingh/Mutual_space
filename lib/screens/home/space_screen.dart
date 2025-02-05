import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../space_tab/community_tab.dart';
import '../space_tab/community_tab_screen.dart';

class SpaceScreen extends StatefulWidget {
  const SpaceScreen({super.key});

  @override
  _SpaceScreenState createState() => _SpaceScreenState();
}

class _SpaceScreenState extends State<SpaceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 Tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180), // Custom AppBar height
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/Logo (1).png",
                width: 191,
                height: 32,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 10),
              Container(
                height: 36,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffBAB7C2).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: "Search messages or people",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xffDAD1E0)),
                child: TabBar(
                  // dragStartBehavior: dragStartBehavior.start,
                  tabAlignment: TabAlignment.fill,
                  isScrollable: false,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  // indicatorPadding: EdgeInsets.symmetric(vertical: 0),
                  // indicatorSize: TabBarIndicatorSize.label,
                  // indicatorWeight: 2,
                  labelPadding: EdgeInsets.only(
                    left: 5,
                  ), // Remove extra padding
                  // padding: EdgeInsets.all(0),
                  // labelPadding: EdgeInsets.all(0),
                  // indicatorPadding: EdgeInsets.only(right: 15),
                  unselectedLabelStyle: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3D3D3D)),

                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xff544262), // Box background color
                    borderRadius: BorderRadius.circular(8),
                    // Rounded corners
                  ),
                  labelStyle: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: [
                    Tab(
                      height: 36,
                      // iconMargin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/img/Globe.png",
                            height: 18,
                            width: 18,
                          ),
                          // Icon(Icons.group),
                          SizedBox(
                            width: 2,
                          ),
                          Text("Community")
                        ],
                      ),
                      // icon: Icon(Icons.group),
                      // text: "Community"
                    ), // Community Tab
                    Tab(
                      height: 36,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/img/Lock.png",
                            color: Color(0xff3D3D3D),
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text("Private")
                        ],
                      ),
                    ), // Private Tab
                    Tab(
                      height: 36,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/img/UsersThree.png",
                            color: Color(0xff3D3D3D),
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text("Geo-Room")
                        ],
                      ),
                    ), // Geo-Room Tab
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CummunityTabScreen(),
          Center(
              child: Text("Private Content", style: TextStyle(fontSize: 18))),
          Center(
              child: Text("Geo-Room Content", style: TextStyle(fontSize: 18))),
        ],
      ),
    );
  }
}
