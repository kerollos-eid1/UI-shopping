import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_shop/core/utils/App_router.dart';
import 'package:ui_shop/core/utils/asset_photo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() =>
      _SplashViewBodyState();
}

class _SplashViewBodyState
    extends State<SplashViewBody> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(
        context,
      ).go(AppRouter.kSplashVeiwFrist);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      children: [Image.asset(AssetPhoto.logo)],
    );
  }
}
