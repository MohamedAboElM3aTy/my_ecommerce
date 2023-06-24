import 'package:flutter/material.dart';

class TopRowOfList extends StatelessWidget {
  const TopRowOfList({
    super.key,
    required this.descriptionText,
    required this.onTap,
    required this.text,
  });

  final VoidCallback? onTap;
  final String descriptionText;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: theme.titleMedium!.copyWith(
                    fontSize: 30,
                  ),
                ),
                Text(
                  descriptionText,
                  style: theme.bodySmall!.copyWith(fontSize: 16),
                ),
              ],
            ),
            InkWell(
              onTap: onTap,
              child: Text(
                'View All',
                style: theme.labelMedium!.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
