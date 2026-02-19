import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';
import 'package:zara_app/features/home/widgets/card_view.dart';

class HoodiesPage extends StatelessWidget {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                'Hoodies ($cardCount)',
                style: TextStyle(
                  fontFamily: AppFonts.gabarito,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 24),

              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 312,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: [
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
      ),
    );
  }
}
