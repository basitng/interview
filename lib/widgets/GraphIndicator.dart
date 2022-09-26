import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphIndicator extends StatefulWidget {
  const GraphIndicator({Key? key, required this.color, required this.label})
      : super(key: key);

  final String label;
  final int color;

  @override
  State<GraphIndicator> createState() => _GraphIndicatorState();
}

class _GraphIndicatorState extends State<GraphIndicator> {
  @override
  Widget build(BuildContext context) {
    return Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: Color(widget.color),
            borderRadius: BorderRadius.circular(10.0)),
      ),
      const SizedBox(width: 4),
      Text(
        widget.label,
        style: GoogleFonts.poppins(fontSize: 10.0),
      ),
    ]);
  }
}
