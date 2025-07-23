import 'package:flutter/material.dart';
import 'package:ui_shop/feature/home/presentation/views/widgets/Custom_app_bar_view.dart';
import 'package:ui_shop/feature/home/presentation/views/widgets/Search_sceen.dart';
import 'package:ui_shop/feature/home/presentation/views/widgets/filter_sort.dart';

class HomePageVeiw extends StatelessWidget {
  const HomePageVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarView(onPressed: () {}, onTap: () {}),
        SearchScreen(),
        SortFilter(text: 'All Feature'),
      ],
    );
  }
}
