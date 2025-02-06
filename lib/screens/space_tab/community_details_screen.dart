import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../community_details_tab/zero_dot_zero_tab.dart';

class CommunityDetailsScreen extends StatefulWidget {
  final String title;
  final String image;
  const CommunityDetailsScreen(
      {super.key, required this.title, required this.image});

  @override
  _CommunityDetailsScreenState createState() => _CommunityDetailsScreenState();
}

class _CommunityDetailsScreenState extends State<CommunityDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFFE6E6E6),
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(widget.image),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "126.7K members",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff050208),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                          color: Color(0xff2DEE36),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "126.7K members",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff050208),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.more_vert_outlined,
              size: 33,
              color: Color(0xff000000),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(4),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                padding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                unselectedLabelStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xff544262),
                  borderRadius: BorderRadius.circular(6),
                ),
                labelStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                tabs: List.generate(
                    4,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: _buildTab(index),
                        )),
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ZeroDotZeroTab(),
            Center(child: Text("Event Tab Content")),
            Center(child: Text("Request Tab Content")),
            Center(child: Text("Opportunity Tab Content")),
          ],
        ),
        floatingActionButton: Row(
          children: [
            Container(
              width: 296,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(1000)),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.emoji_emotions_outlined,
                        color: Colors.grey),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Aa",
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.attach_file, color: Colors.grey),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff7B00F1),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.mic, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }

  //===================
  Widget _buildTab(int index) {
    List<String> tabTitles = ["0.0", "Event", "Request", "Opportunity"];

    bool isSelected = _tabController.index == index;

    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xff544262)
            : Colors.white, // Unselected background
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected
              ? Color(0xff544262)
              : Color(0xffC4AEAD), // Unselected border
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 6),
          Text(
            tabTitles[index],
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}
