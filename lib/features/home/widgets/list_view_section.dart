import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class listViewSection extends StatelessWidget {
  const listViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 281,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              decoration: BoxDecoration(
                color: AppColors.inputBackgroundColor,
    
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/MensHarringtonJacket.png',
    
                          fit: BoxFit.cover,
                        ),
                      ),
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
                      "Men's Harrington Jacket",
                      style: TextStyle(
                        fontFamily: AppFonts.circularStd,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
    
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "\$148.00",
                      style: TextStyle(
                        fontFamily: AppFonts.gabarito,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
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
