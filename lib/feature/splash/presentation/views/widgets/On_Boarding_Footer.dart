import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      children: [
        // المؤشر الدائري (Dots)
        const Spacer(),
        Row(
          children: List.generate(totalPages, (index) {
            return  Container(
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
        Spacer(),
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
