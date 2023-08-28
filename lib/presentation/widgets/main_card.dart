import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCardG extends StatelessWidget {
  const MainCardG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg'),
              fit: BoxFit.cover),
          borderRadius: kborderrad,
        ),
      ),
    );
  }
}
