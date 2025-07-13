import 'package:flutter/material.dart';

import 'package:ui_shop/feature/splash/presentation/views/widgets/On_Boarding_Footer.dart';

import 'package:ui_shop/feature/splash/presentation/views/widgets/custom_app_Bar.dart';
import 'package:ui_shop/feature/splash/presentation/views/widgets/custom_image_view.dart';

class SpalshVeiwFristBody extends StatelessWidget {
  const SpalshVeiwFristBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: const customAppBar(),
          ),

          const Customimageview(),
          Spacer(),
          OnboardingFooter(currentPage: 1, totalPages: 3, onNext: () {}),
        ],
      ),
    );
  }
}
