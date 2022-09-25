import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -50,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 5.0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/user.png",
                    ),
                    radius: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Abiola Ogunjobi",
                            style: GoogleFonts.poppins(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 12),
                          SvgPicture.asset(
                            "assets/badge.svg",
                            width: 20,
                            height: 20,
                          )
                        ],
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Verified",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
