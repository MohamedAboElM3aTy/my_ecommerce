import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:my_ecommerce/utilities/router.dart';
import 'package:my_ecommerce/utilities/routes.dart';
import 'package:my_ecommerce/utilities/theme_light.dart';
import 'package:my_ecommerce/services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
}

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
