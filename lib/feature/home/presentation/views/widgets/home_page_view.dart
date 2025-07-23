import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_shop/core/utils/style.dart';
import 'package:ui_shop/feature/home/presentation/views/widgets/Custom_app_bar_view.dart';
import 'package:ui_shop/feature/home/presentation/views/widgets/Search_sceen.dart';

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

class SortFilter extends StatelessWidget {
  const SortFilter({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Styles.textStyles18),
          SizedBox(width: MediaQuery.of(context).size.width * 0.3),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 12),
              backgroundColor: const Color.fromARGB(255, 235, 228, 228),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Sort', style: TextStyle(color: Colors.black)),
                SizedBox(width: 4),
                Icon(
                  FontAwesomeIcons.arrowDownShortWide,
                  color: Colors.black,
                  size: 20,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 12),
              backgroundColor: const Color.fromARGB(255, 235, 228, 228),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Filter', style: TextStyle(color: Colors.black)),
                SizedBox(width: 4),
                Icon(Icons.filter_alt, color: Colors.black, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
