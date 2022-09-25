import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(
          key: key,
        );
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              SvgPicture.asset("assets/$icon.svg"),
              const SizedBox(width: 5.0),
              Text(label, style: GoogleFonts.poppins(fontSize: 17.0))
            ],
          ),
          SvgPicture.asset(
            "assets/Back.svg",
            width: 20,
            height: 20,
          ),
        ]),
      ),
    );
  }
}
