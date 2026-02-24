import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class filter extends StatelessWidget {
  final String label;
  final String? prefixIcon;
  final String? suffexIcon;
  final Color backGroundColor;
  final Color textColor;
  const filter({
    super.key,
    required this.label,
    this.prefixIcon,
    this.suffexIcon,
    required this.backGroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(prefixIcon ?? '', height: 25),
            SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontFamily: AppFonts.circularStd,
                fontSize: 16,
              ),
            ),
            SizedBox(width: 5),

            SvgPicture.asset(
              suffexIcon ?? '',
              height: 13,
              colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
