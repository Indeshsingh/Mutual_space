import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Commentcard extends StatelessWidget {
  final String image;
  final String title;
  final String short_discription;
  final String description;
  final String like;
  final String comment;
  final bool? dot;
  final bool? km;
  const Commentcard({
    super.key,
    required this.image,
    required this.title,
    required this.short_discription,
    required this.description,
    required this.like,
    required this.comment,
    this.dot = false,
    this.km = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(image),
            ),
            km != false
                ? Positioned(
                    bottom: -5,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          "1 km",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            dot != false
                ? Positioned(
                    top: 0,
                    right: 2,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: Border.all(width: 1.5, color: Colors.black)),
                    ))
                : SizedBox.shrink(),
          ],
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          padding: EdgeInsets.all(6),
          width: MediaQuery.of(context).size.width * 0.74,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Text(
                short_discription,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2C2A30)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                description,
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 18,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.thumb_up,
                        color: Color(0xffFFC710),
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        like,
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        comment,
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "replies",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.visibility,
                        size: 18,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "8.36k",
                        style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10:00 am",
                        style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
