import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview_a/screens/custom_icon_icons.dart';
import 'package:interview_a/widgets/Cards.dart';

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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GNav(
          tabBackgroundColor: Color(0X1A00A9CB),
          padding: EdgeInsets.all(16.0),
          activeColor: Color(0Xff00A9CB),
          tabBorderRadius: 14,
          color: Color.fromARGB(255, 83, 82, 82),
          gap: 6,
          tabs: [
            GButton(
              icon: CustomIcon.home,
              text: 'Home',
            ),
            GButton(
              icon: CustomIcon.headset,
              text: 'Headphones',
            ),
            GButton(
              icon: CustomIcon.tv,
              text: 'Television',
            ),
            GButton(
              icon: CustomIcon.pay,
              text: 'Television',
            ),
          ],
        ),
      ),
    );
  }
}
