import 'package:flutter/cupertino.dart';

import 'package:my_ecommerce/utilities/routes.dart';
// import 'package:my_ecommerce/views/pages/landing_page.dart';
import 'package:my_ecommerce/views/pages/auth_page.dart';
import 'package:my_ecommerce/views/pages/home_page.dart';
import 'package:my_ecommerce/views/pages/bottom_nav_bar.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.authPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
        settings: settings,
      );
    case AppRoutes.homePageRoute:
      return CupertinoPageRoute(
        builder: (_) => const HomePage(),
        settings: settings,
      );
    case AppRoutes.bottomNavBarRoute:
      return CupertinoPageRoute(
        builder: (_) => const BottomNavBar(),
        settings: settings,
      );
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
        settings: settings,
      );
  }
}
