import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class ContinueButton extends StatelessWidget {
 final void Function()? onPress;
  const ContinueButton({
    
    super.key,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          'Continue',
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontSize: 16,
            fontFamily: AppFonts.circularStd,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
