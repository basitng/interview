import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: width,
      child: ListView(children: [
        Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/logo.png"),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 30.0,
                    ))
              ]),
          const SizedBox(height: 10),
          Image.asset("assets/banner.png"),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.greenAccent, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Home",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Offering",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Partners",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Branch Locator",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Broadcast Schedule",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Live Service",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Live Downloads",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Testimonies",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.white, width: 5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "More",
                    style:
                        GoogleFonts.inter(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ]),
      ]),
    );
  }
}
