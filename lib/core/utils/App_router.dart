
import 'package:go_router/go_router.dart';

import 'package:ui_shop/feature/splash/presentation/views/Splash_View.dart';
import 'package:ui_shop/feature/splash/presentation/views/splash_veiw_frist.dart';

abstract class AppRouter {
static const  kSplashVeiwFrist ='/SplashVeiwFrist';
static  final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(
       
      ),
    ),
      GoRoute(
      path: kSplashVeiwFrist,
      builder: (context, state) => SplashVeiwFrist(),
    ),
  ]);
}

