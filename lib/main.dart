import 'package:flutter/material.dart';

import 'package:ui_shop/core/utils/App_router.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      color: Color(0xffF5F5F5),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
