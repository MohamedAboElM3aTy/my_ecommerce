import 'package:flutter/material.dart';

import 'package:my_ecommerce/models/product.dart';
import 'package:my_ecommerce/utilities/assets.dart';
import 'package:my_ecommerce/views/widgets/list_item_home.dart';
import 'package:my_ecommerce/views/widgets/top_row_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                AppAssets.topHomePageAsset,
                width: double.infinity,
                height: size.height * 0.3,
                fit: BoxFit.cover,
              ),
              Opacity(
                opacity: 0.3,
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.3,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                child: Text(
                  'Street clothes',
                  style: theme.displaySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TopRowOfList(
                    text: 'Sale',
                    onTap: () {},
                    descriptionText: 'Super summer sale',
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: dummyProducts
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: ListItemHome(product: e),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(height: 40),
                TopRowOfList(
                  text: 'New',
                  onTap: () {},
                  descriptionText: 'You\'ve Never seen it before!',
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: dummyProducts
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: ListItemHome(product: e),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
