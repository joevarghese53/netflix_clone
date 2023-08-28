import 'package:flutter/material.dart';
import 'main_card.dart';
import 'main_title.dart';

class RowOfCards extends StatelessWidget {
  const RowOfCards({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          child: MainTitle(
            title: title,
          ),
        ),
        LimitedBox(
          maxHeight: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) {
                return const MainCardG();
              },
            ),
          ),
        ),
      ],
    );
  }
}
