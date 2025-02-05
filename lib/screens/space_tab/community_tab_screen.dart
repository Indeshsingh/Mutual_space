import 'package:figma_design/screens/space_tab/community_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'community_card.dart';

class CummunityTabScreen extends StatelessWidget {
  const CummunityTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          CommunityCard(
            // show: true,
            time: "9:41 am",
            title: "Consumer Technology",
            hereCount: "543",
            totalCount: "253",
            totalcount: true,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CommunityDetailsScreen()));
            },
          ),
          Divider(),
          CommunityCard(
            // show: true,
            time: "9:42 am",
            title: "SaaS & Enterprise",
            hereCount: "543",
            totalCount: "39",
            totalcount: true,
          ),
          Divider(),
          CommunityCard(
            // show: true,
            time: "9:23 AM",
            title: "Travel & Vacation",
            hereCount: "543",
            // totalCount: "39",
            show: true,
            data: true,
          ),
          Divider(),
          CommunityCard(
            // show: true,
            time: "9:23 AM",
            title: "Law & Legal",
            hereCount: "543",
            // totalCount: "39",
            show: true,
            data: true,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffEBE7EF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore more",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0F0123),
                    ),
                  ),
                  Icon(CupertinoIcons.arrow_down_right),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//=============================update
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'community_card.dart';

// class CummunityTabScreen extends StatefulWidget {
//   const CummunityTabScreen({super.key});

//   @override
//   State<CummunityTabScreen> createState() => _CummunityTabScreenState();
// }

// class _CummunityTabScreenState extends State<CummunityTabScreen> {
//   // Initial list of 4 communities
//   List<Map<String, dynamic>> communityList = [
//     {
//       "time": "9:41 am",
//       "title": "Consumer Technology",
//       "hereCount": "543",
//       "totalCount": "253"
//     },
//     {
//       "time": "9:42 am",
//       "title": "SaaS & Enterprise",
//       "hereCount": "543",
//       "totalCount": "39"
//     },
//     {
//       "time": "9:23 AM",
//       "title": "Travel & Vacation",
//       "hereCount": "543",
//       "show": true

//     },
//     {"time": "9:23 AM", "title": "Law & Legal", "hereCount": "543"},
//   ];

//   // Function to add 4 more items
//   void _loadMoreCommunities() {
//     setState(() {
//       communityList.addAll([
//         {
//           "time": "9:50 am",
//           "title": "Health & Fitness",
//           "hereCount": "231",
//           "totalCount": "59"
//         },
//         {
//           "time": "9:55 am",
//           "title": "Blockchain & Crypto",
//           "hereCount": "890",
//           "totalCount": "102"
//         },
//         {"time": "10:00 am", "title": "Photography & Art", "hereCount": "312"},
//         {"time": "10:05 am", "title": "Gaming & eSports", "hereCount": "789"},
//       ]);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // List of Communities
//         Expanded(
//           child: ListView.separated(
//             shrinkWrap: true,
//             itemCount: communityList.length,
//             separatorBuilder: (context, index) => Divider(),
//             itemBuilder: (context, index) {
//               final item = communityList[index];
//               return CommunityCard(
//                 time: item["time"] ?? "",
//                 title: item["title"] ?? "",
//                 hereCount: item["hereCount"] ?? "",
//                 totalCount: item["totalCount"] ?? "",
//                 totalcount: item.containsKey("totalCount"),
//               );
//             },
//           ),
//         ),

//         const SizedBox(height: 20),

//         // Explore More Button
//         GestureDetector(
//           onTap: _loadMoreCommunities,
//           child: Container(
//             height: 38,
//             width: double.infinity,
//             margin: const EdgeInsets.symmetric(horizontal: 16),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               color: Color(0xffEBE7EF),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Explore more",
//                   style: GoogleFonts.inter(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xff0F0123),
//                   ),
//                 ),
//                 const SizedBox(width: 5),
//                 const Icon(CupertinoIcons.arrow_down_right),
//               ],
//             ),
//           ),
//         ),

//         const SizedBox(height: 20),
//       ],
//     );
//   }
// }
