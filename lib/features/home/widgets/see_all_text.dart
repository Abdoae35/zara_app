import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class seeAllText extends StatelessWidget {
 final void Function()? onPress;
  const seeAllText({super.key,this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,

      child: Text(
        "See All",
        style: TextStyle(
          fontFamily: AppFonts.circularStd,
          fontSize: 19,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
