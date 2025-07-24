import 'package:flutter/material.dart';
import 'package:ui_shop/feature/splash/presentation/views/widgets/spalsh_veiw_frist_body.dart';

class SplashVeiwFrist extends StatelessWidget {
  const SplashVeiwFrist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SpalshVeiwFristBody(),
      ),
    );
  }
}
