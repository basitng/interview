import 'package:flutter/cupertino.dart';
import 'package:interview_a/widgets/ListCard.dart';

class CardWithData extends StatelessWidget {
  const CardWithData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListCard(
          icon: "security-safe",
          label: "Security",
        ),
        ListCard(
          icon: "card",
          label: "Card",
        ),
        ListCard(
          icon: "notification",
          label: "Notification",
        ),
        ListCard(
          icon: "card",
          label: "Live Support",
        ),
        ListCard(
          icon: "card",
          label: "About Us",
        ),
        ListCard(
          icon: "card",
          label: "Contact Us",
        ),
        ListCard(
          icon: "card",
          label: "Terms & Privavcy Policy",
        ),
      ],
    );
  }
}
