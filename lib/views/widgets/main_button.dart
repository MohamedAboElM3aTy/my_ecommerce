import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.textLabel,
    required this.onPress,
    this.hasCircularBorder = false,
  });

  final String textLabel;
  final VoidCallback onPress;
  final bool hasCircularBorder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: hasCircularBorder ?  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ) : null ,
        ),
        child: Text(
          textLabel,
        ),
      ),
    );
  }
}
