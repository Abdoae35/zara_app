import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class cardView extends StatelessWidget {
  final String path;
  final String label;
  final String price;

  const cardView({
    super.key,
    required this.label,
    required this.path,
    required this.price,
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
            // Image with heart icon
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
                label,
                style: TextStyle(
                  fontFamily: AppFonts.circularStd,
                  fontSize: 14,
                ),
              ),
            ),

            Spacer(), 
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 4),
              child: Text(
                price,
                style: TextStyle(
                  fontFamily: AppFonts.gabarito,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
