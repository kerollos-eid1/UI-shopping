import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_shop/constant.dart';

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
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: KprimaryBackgroundColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
      ),
    );
  }
}
