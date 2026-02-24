import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';
import 'package:zara_app/features/home/widgets/card_view.dart';
import 'package:zara_app/features/hoodies/widgets/gird_view_display.dart';

class HoodiesPage extends StatelessWidget {
  const HoodiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int cardCount = 6;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: backLeading(),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Hoodies ($cardCount)',
                style: TextStyle(
                  fontFamily: AppFonts.gabarito,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 24),
            girdViewDisplay(
              cardCount: cardCount,
              cardList: [
                // Card 1
                cardView(
                  path: AppAssets.MensFleecePulloverHoodie,
                  label: 'Men\'s Fleece Pullover Hoodie',
                  price: '\$100.00',
                ),

                // Card 2
                cardView(
                  path: AppAssets.FleecePulloverSkateHoodie,
                  label: 'Fleece Pullover Skate Hoodie',
                  price: '\$85.00',
                ),

                // Card 3
                cardView(
                  path: AppAssets.FleeceSkateHoodie,
                  label: 'Men\'s Ice-Dye Pullover Hoodie',
                  price: '\$128.97',
                ),

                // Card 4
                cardView(
                  path: AppAssets.MensIceDyePulloverHoodie,
                  label: 'Crop Hoodie',
                  price: '\$95.00',
                ),

                // Card 5
                cardView(
                  path: AppAssets.MensFleecePulloverHoodie,
                  label: 'Tech Fleece Hoodie',
                  price: '\$150.00',
                ),

                // Card 6
                cardView(
                  path: AppAssets.MensFleecePulloverHoodie,
                  label: 'Performance Hoodie',
                  price: '\$110.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
