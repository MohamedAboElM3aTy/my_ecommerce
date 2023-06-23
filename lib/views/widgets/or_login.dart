import 'package:flutter/material.dart';
import 'package:my_ecommerce/utilities/enums.dart';

class OrLogin extends StatelessWidget {
  const OrLogin({super.key});


  @override
  Widget build(BuildContext context) {
  var authType = AuthFormType.login;
    return Column(
      children: [
        Text(
          authType == AuthFormType.login ? 'Or Login With Social Account' : 'Or Sign Up With',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 64,
              width: 92,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.youtube_searched_for ),
            ),
            const SizedBox(width: 12),
            Container(
              height: 64,
              width: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: const Icon(Icons.facebook),
            ),
          ],
        ),
      ],
    );
  }
}
