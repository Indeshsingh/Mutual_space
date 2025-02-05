import 'package:flutter/material.dart';

import 'community_tab.dart';

class CummunityTabScreen extends StatelessWidget {
  const CummunityTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommunityTab(
          // show: true,
          time: "9:41 am",
          title: "Consumer Technology",
          hereCount: "253",
          totalCount: "209",
        ),
      ],
    );
  }
}
