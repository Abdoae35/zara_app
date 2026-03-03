import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/home/data/item_data.dart';

class cardView extends StatelessWidget {
  final String path;
  final String label;
  final String price;
  final String? discount;

  const cardView({
    super.key,
    required this.label,
    required this.path,
    required this.price,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.inputBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(child: Image.asset(path, fit: BoxFit.cover)),
                Positioned(
                  top: 9,
                  right: 12,
                  child: SvgPicture.asset(AppAssets.heart),
                ),
              ],
            ),

            SizedBox(height: 9),

            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                label,
                style: TextStyle(
                  fontFamily: AppFonts.circularStd,
                  fontSize: 14,
                ),
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 8),
              child: Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontFamily: AppFonts.gabarito,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    discount ?? '',

                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColors.blackDiscount,
                      fontFamily: AppFonts.gabarito,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackDiscount,
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
