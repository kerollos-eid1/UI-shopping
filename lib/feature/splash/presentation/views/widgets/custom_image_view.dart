import 'package:flutter/material.dart';
import 'package:ui_shop/core/utils/asset_photo.dart';
import 'package:ui_shop/core/utils/style.dart' show Styles;

class Customimageview extends StatelessWidget {
  const Customimageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(AssetPhoto.FashionShop),
          ),
          Text('Choose Products', style: Styles.textStyles24),
          Text(
            'Amet minim mollit non deserunt ullamco\n est sit aliqua dolor do amet sint. Velit\n officia consequat duis enim velit mollit.',
            style: Styles.textStyles14.copyWith(color: Color(0xffA8A8A9)),
          ),
        ],
      ),
    );
  }
}
