import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/search/widgets/title.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(imageurl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
