import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../space_tab/comment_card.dart';

class ZeroDotZeroTab extends StatelessWidget {
  const ZeroDotZeroTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "16 new messages (in last 5 min)",
            style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff76717A)),
          ),
          SizedBox(
            height: 10,
          ),
          Commentcard(
            image: "assets/img/cmt.png",
            title: "Jasmine Chopra",
            short_discription:
                "Tech enthusiast always on the lookout to write about the next big innovation",
            description:
                "Hey everyone, have you heard about the new AI-powered virtual assistant that can understand regional languages? It's a game-changer!",
            like: "3",
            comment: "4",
            dot: true,
            km: true,
          ),
          SizedBox(
            height: 10,
          ),
          Commentcard(
            image: "assets/img/Group 11 (1).png",
            title: "Amit Raidu ",
            short_discription:
                "Solo-preneur passionate about social impact and technology",
            description:
                "I'm working on a social enterprise that uses technology to address the challenges of climate change. It's been a game-changer for their startup in reducing carbon footprint and get 30-45% waive in GST, CGST and compliance. If you want to get benefits, let’s talk.😊#",
            like: "3",
            comment: "4",
            dot: false,
            km: false,
          ),
          SizedBox(
            height: 10,
          ),
          Commentcard(
            image: "assets/img/Group 11.png",
            title: "Aditi Verma",
            short_discription: "Startup founder building the next unicorn",
            description:
                "I'm looking for feedback on our latest product idea. We're building a mobile app that helps users track their carbon footprint and make sustainable choices.",
            like: "3",
            comment: "4",
            dot: false,
            km: false,
          ),
        ],
      ),
    );
  }
}
