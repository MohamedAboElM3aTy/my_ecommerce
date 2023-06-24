import 'package:flutter/material.dart';

import 'package:my_ecommerce/utilities/router.dart';
import 'package:my_ecommerce/utilities/routes.dart';
import 'package:my_ecommerce/utilities/theme_light.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme(),
      title: 'Ecommerce App',
      initialRoute: AppRoutes.authPageRoute,
      onGenerateRoute: generateRoute,
    );
  }
}
