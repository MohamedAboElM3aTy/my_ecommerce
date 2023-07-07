import 'package:flutter/material.dart';

import 'package:my_ecommerce/models/product.dart';

class ListItemHome extends StatelessWidget {
  const ListItemHome({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    width: 150,
                    height: 220,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    height: 30,
                    width: 50,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          '${product.discount} %',
                          style: theme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              product.category,
              style: theme.titleMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              product.title,
              style: theme.titleLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6.0),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${product.price} \$',
                    style: theme.bodyMedium!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: ' ${product.price * (product.discount) / 100} \$',
                    style: theme.bodyMedium!.copyWith(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
