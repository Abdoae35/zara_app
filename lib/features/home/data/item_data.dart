import 'package:zara_app/core/constants/app_assets.dart';

class ItemData {
  final String path;
  final String label;
  final String price;
  final String? discount;

  ItemData({
    required this.label,
    required this.path,
    required this.price,
    this.discount,
  });
}

List<ItemData> allProduct = [
  ItemData(
    label: 'Men\'s Harrington Jacket',
    path: AppAssets.MensHarringtonJacket,
    price: '\$148.00',
  ),
  ItemData(
    label: 'Max Cirro Men\'s Slides',
    path: AppAssets.MaxCirroMensSlides,
    price: '\$55.00',
    discount: '\$100.97',
  ),

  ItemData(
    label: 'Fleece Pullover Skate Hoodie',
    path: AppAssets.item2,
    price: '\$85.00',
  ),
  ItemData(
    label: 'Men\'s Ice-Dye Pullover Hoodie',
    path: AppAssets.item3,
    price: '\$128.97',
  ),
  ItemData(label: 'Crop Hoodie', path: AppAssets.item4, price: '\$95.00'),
  ItemData(
    label: 'Men\'s Fleece Pullover Hoodie',
    path: AppAssets.MensFleecePulloverHoodie,
    price: '\$100.00',
  ),
];
