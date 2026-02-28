import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/functions/push_to.dart';
import 'package:zara_app/features/home/widgets/card_view.dart';
import 'package:zara_app/features/product/view/product_page.dart';

class listViewSection extends StatelessWidget {
  const listViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 300,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                pushTo(context, ProductPage());
              },
              child: cardView(
                path: AppAssets.MensHarringtonJacket,
                label: 'Men\'s Harrington Jacket',
                price: '\$148.00',
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 13);
          },
        ),
      ),
    );
  }
}
