import 'package:flutter/material.dart';
import 'package:ui_shop/core/utils/asset_photo.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({
    super.key,
    required this.onPressed,
    required this.onTap,
  });
  final VoidCallback onPressed;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.sort, weight: 32),
          ),
          SizedBox(
            width: 111,
            height: 37,
            child: Image.asset(AssetPhoto.logo),
          ),
          GestureDetector(
            onTap: onTap,
            child: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(AssetPhoto.profile),
            ),
          ),
        ],
      ),
    );
  }
}
