import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';
import 'package:zara_app/features/category/widgets/category_icon.dart';
import 'package:zara_app/features/category/widgets/category_item.dart';
import 'package:zara_app/features/home/widgets/custom_title.dart';

import 'package:zara_app/features/hoodies/page/hoodies_page.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: backLeading(),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 17),
            Text(
              'Shop by Categories',
              style: TextStyle(
                fontFamily: AppFonts.gabarito,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 14),

            SizedBox(
              height: 600,
              child: ListView(
                scrollDirection: Axis.vertical,

                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HoodiesPage(),
                            ),
                          );
                        },

                        child: categoryItem(
                          path: AppAssets.hoodies,
                          label: 'Hoodies',
                        ),
                      ),

                      categoryItem(
                        path: AppAssets.accessories,
                        label: 'Accessories',
                      ),
                      categoryItem(path: AppAssets.shortss, label: 'Shorts'),
                      categoryItem(path: AppAssets.shoes, label: 'Shoes'),
                      categoryItem(path: AppAssets.bag, label: 'Bags'),
                    ],
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
