import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_a/widgets/CardWithData.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ignore: sized_box_for_whitespace
        Container(height: 200, child: const ListContainer()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Message of the Week",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 17)),
              Text("View More",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 14))
            ],
          ),
        ),
        const SizedBox(
          height: 37.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/Highlights.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Highlight.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/1.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Now Streaming Lie",
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Dealing with the En...",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Text(
                          "Dr. Chris Okafor . 3:42",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 13.0),
                        ),
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.end,
                            children: const [
                              SizedBox(
                                width: 150,
                                height: 40,
                              ),
                              Icon(
                                Icons.play_circle,
                                size: 30.0,
                                color: Colors.white,
                              )
                            ])
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upcoming Events",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 17)),
              Text("View More",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 14))
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Image.asset(
                  "assets/2.png",
                  width: 100,
                ),
                Column(
                  children: [
                    Text(
                      "SPECIAL PROPHETIC FEAST",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 243,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "25th Feb, 2022",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey[500]),
                            ),
                            Text(
                              "7pm",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Testimonies",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 17)),
              Text("View More",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 14))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Breast Cancer healed!!! Glory to God!",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: const Color(0XFF00A9CB))),
                const SizedBox(height: 5.0),
                Text("Sometimes there’s no reason to smile, but I’ll",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey[700])),
              ],
            ),
          )),
        )
      ],
    );
  }
}
