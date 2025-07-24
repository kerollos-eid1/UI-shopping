import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_shop/core/utils/style.dart';

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
              backgroundColor: Colors.white,
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
              backgroundColor: Colors.white,
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
