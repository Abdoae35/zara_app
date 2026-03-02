import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class Gender extends StatelessWidget {
  final String gender;
  const Gender({super.key, required this.IsMenSelected, required this.gender});

  final bool IsMenSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 161,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: IsMenSelected
            ? AppColors.primaryColor
            : AppColors.inputBackgroundColor,
      ),
      child: Center(
        child: Text(
          gender,
          style: TextStyle(
            color: IsMenSelected
                ? AppColors.backgroundColor
                : AppColors.blackColor,
            fontFamily: AppFonts.circularStd,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
