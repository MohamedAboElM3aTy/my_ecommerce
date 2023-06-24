import 'package:my_ecommerce/utilities/assets.dart';

class Product {
  final String id;
  final String title;
  final int price;
  final String imageUrl;
  final int? discount;
  final double? rating;
  final String category;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.category = 'other',
    this.rating,
    this.discount,
  });
}

List<Product> dummyProducts = const [
  Product(
    id: '1',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
    discount: 20,
  ),
  Product(
    id: '2',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
    discount: 20,
  ),
  Product(
    id: '3',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
  ),
  Product(
    id: '2',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
    discount: 20,
  ),
  Product(
    id: '2',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
    discount: 20,
  ),
  Product(
    id: '2',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
    discount: 20,
  ),
  Product(
    id: '2',
    title: 'T-Shirt',
    price: 300,
    category: 'Clothes',
    imageUrl: AppAssets.tempProductAsset,
    discount: 20,
  )
];
