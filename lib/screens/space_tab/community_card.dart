import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityCard extends StatelessWidget {
  final bool? show;
  final String image;
  final String? midTotal;

  final String title;
  final String? totalCount;
  final String hereCount;
  final String time;
  final bool? data;
  final bool? totalcount;
  final VoidCallback? onTap;
  const CommunityCard({
    super.key,
    this.show = false,
    required this.title,
    this.totalCount,
    required this.hereCount,
    required this.time,
    this.data = false,
    this.totalcount = false,
    this.onTap,
    required this.image,
    this.midTotal,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(image),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        // color: Colors.yellow,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                // Container(
                                //     color: Colors.red,
                                //     width: 80,
                                //     height: 30,
                                //     child: Positioned(
                                //       left: 0,
                                //       child: Image.asset(
                                //         "assets/img/Ellipse 76.png",
                                //       ),
                                //     )),
                                Container(
                                  width: 80,
                                  height: 20,
                                  // color: Colors.red,
                                  child: Image.asset(
                                    "assets/img/Ellipse 76.png",
                                    width: 25,
                                  ),
                                ),

                                Positioned(
                                  top: 2,
                                  right: 41,
                                  child: Container(
                                      width: 25,
                                      child: Image.asset(
                                        "assets/img/Ellipse 77.png",
                                      )),
                                ),
                                Positioned(
                                  top: 2,
                                  right: 55,
                                  child: Container(
                                      width: 25,
                                      child: Image.asset(
                                        "assets/img/Ellipse 78.png",
                                      )),
                                )
                              ],
                            ),
                            Text(
                              "$hereCount+ here...",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4F4F4F)),
                            ),
                          ],
                        ),
                      ),
                      // Spacer(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                time,
                style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9D9FA3)),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  totalcount != false
                      ? Container(
                          decoration: BoxDecoration(
                              color: Color(0xff9135F2),
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 2),
                            child: Text(
                              totalCount.toString(),
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  data != false
                      ? Container(
                          decoration: BoxDecoration(
                            color: Color(0xff9135F2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 5),
                            child: Text(
                              "@",
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  show != false
                      ? SizedBox(
                          width: 5,
                        )
                      : SizedBox.shrink(),
                  show != false
                      ? Container(
                          decoration: BoxDecoration(
                            color: Color(0xff9135F2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              midTotal.toString(),
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
