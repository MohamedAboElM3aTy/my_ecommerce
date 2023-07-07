import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_ecommerce/controllers/auth_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _logOut(AuthController model) async {
    await model.logOut();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (_, model, __) {
        return Center(
          child: TextButton(
            onPressed: () => _logOut(model),
            child: Text(
              'Log Out',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        );
      },
    );
  }
}
