// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GNav(
          tabBackgroundColor: Color(0X1AF64F00),
          padding: EdgeInsets.all(16.0),
          activeColor: Color(0XffF64F00),
          tabBorderRadius: 14,
          color: Color.fromARGB(255, 83, 82, 82),
          gap: 6,
          tabs: [
            const GButton(
              icon: FeatherIcons.home,
              text: 'Home',
            ),
            const GButton(
              icon: FeatherIcons.layout,
              text: 'Headphones',
            ),
            const GButton(
              icon: FeatherIcons.bell,
              text: 'Notification',
            ),
            GButton(
                icon: FeatherIcons.user,
                text: 'Profile',
                onPressed: () {
                  Navigator.pushNamed(context, "/create");
                }),
          ],
        ),
      ),
    );
  }
}
