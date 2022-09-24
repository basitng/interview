import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCards extends StatelessWidget {
  final String title;
  final String author;
  final String image;

  const PostCards({
    super.key,
    required this.image,
    required this.title,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/$image.png", fit: BoxFit.fitWidth),
            Text(title,
                style: GoogleFonts.inter(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                )),
            Text(
              author,
              style: GoogleFonts.inter(
                fontSize: 13.0,
                color: Colors.grey[600],
              ),
            ),
          ]),
    );
  }
}
