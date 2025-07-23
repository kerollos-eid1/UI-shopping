// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ui_shop/feature/home/presentation/views/widgets/home_page_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: HomePageVeiw(),
      ),
      );
  }
}
