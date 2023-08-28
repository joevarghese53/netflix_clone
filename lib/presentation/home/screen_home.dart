import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone_app/core/constants.dart';
import '../../core/colors/colors.dart';
import '../widgets/row_of_cards.dart';
import '../widgets/special_row_of_cards.dart';
import 'widgets/bg_card_widget.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollnotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollnotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCardWidget(),
                    RowOfCards(
                      title: "Released in the Past Year",
                    ),
                    kheight13,
                    RowOfCards(
                      title: "Trending Now",
                    ),
                    kheight13,
                    SpecialRowOfCards(),
                    kheight13,
                    RowOfCards(
                      title: "Tense Dramas",
                    ),
                    kheight13,
                    RowOfCards(
                      title: "South Indian Cinema",
                    ),
                  ],
                ),
                scrollnotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                        )),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                kwidth,
                                Image.network(
                                  'https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo-300x300.png',
                                  width: 60,
                                  height: 50,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: kwhite,
                                  size: 30,
                                ),
                                kwidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kwidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                kwidth40,
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'TV Shows',
                                    style: khomestyle,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Movies',
                                    style: khomestyle,
                                  ),
                                ),
                                TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: kwhite,
                                    ),
                                    label: Text(
                                      'Categories',
                                      style: khomestyle,
                                    )),
                                kwidth40,
                              ],
                            )
                          ],
                        ),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}
