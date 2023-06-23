import 'package:flutter/cupertino.dart';

import 'package:my_ecommerce/utilities/routes.dart';
// import 'package:my_ecommerce/views/pages/landing_page.dart';
import 'package:my_ecommerce/views/pages/auth_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
      );
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
      );
  }
}
