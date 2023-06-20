import 'package:flutter/material.dart';

import 'package:my_ecommerce/utilities/router.dart';
import 'package:my_ecommerce/utilities/routes.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final myTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xFFE5E5E5),
      primaryColor: Colors.red,
    );
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      onGenerateRoute: generateRoute,
      initialRoute: AppRoutes.loginPageRoute,
      theme: myTheme,
    );
  }
}
