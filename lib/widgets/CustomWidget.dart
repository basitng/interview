import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: label == "30" ? const Color(0XFFFE8C00) : Color(0XFFEEEEEE),
          borderRadius: BorderRadius.circular(10.0)),
      width: 60,
      margin: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          "$label%",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
        )),
      ),
    );
  }
}
