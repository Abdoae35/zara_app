import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/home/widgets/card_view.dart';

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
            return cardView(
              path: AppAssets.MensHarringtonJacket,
              label: 'Men\'s Harrington Jacket',
              price: '\$148.00',
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
