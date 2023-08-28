import 'package:flutter/material.dart';
import 'package:netflix_clone_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone_app/presentation/fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_app/presentation/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaughs(),
    const ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: bottomnavindexnotifier,
          builder: (context, value, child) {
            return pages[value];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
