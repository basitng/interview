import 'package:flutter/material.dart';
import 'package:interview_a/widgets/Cards.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
            width: 10.0,
          ),
          PostCards(
            title: "Dealing with the...",
            author: "Doctor chris okafor",
            image: "1",
          ),
          PostCards(
            title: "Global communi...",
            author: "Doctor chris okafor",
            image: "2",
          ),
          PostCards(
            title: "Prophesy Healing",
            author: "Doctor chris okafor",
            image: "3",
          ),
        ],
      ),
    );
  }
}
