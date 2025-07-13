import 'package:flutter/material.dart';

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
          const customAppBar(),
          SizedBox(height: 70),
          const Customimageview(),
          Spacer(),
          OnboardingFooter(currentPage: 1, totalPages: 3, onNext: () {}),
        ],
      ),
    );
  }
}

class OnboardingFooter extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onNext;

  const OnboardingFooter({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // المؤشر الدائري (Dots)
        Row(
          children: List.generate(totalPages, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: index == currentPage ? 20 : 10,
              height: 10,
              decoration: BoxDecoration(
                color: index == currentPage ? Colors.black87 : Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
            );
          }),
        ),

        // زر "Next"
        TextButton(
          onPressed: onNext,
          child: const Text(
            'Next',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
