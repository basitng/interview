import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_a/widgets/BottomNav.dart';

import 'package:interview_a/widgets/Content.dart';
import 'package:interview_a/widgets/_Drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset(
                  "assets/Hamburger.svg",
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.scaleDown,
                ))),
        elevation: 0,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              "assets/bell_icon.svg",
              width: 30.0,
              height: 30.0,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: const ContentWidget(),
      bottomNavigationBar: const BottomNav(),
      drawer: SafeArea(
        child: MyDrawer(width: width),
      ),
    );
  }
}
