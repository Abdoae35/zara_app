import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class CustomForm extends StatelessWidget {
  final String hint;
  const CustomForm({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },

      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColors.inputBackgroundColor,
        filled: true,
        hint: Text(
          hint,
          style: TextStyle(
            color: AppColors.blackDiscount,
            fontSize: 16,
            fontFamily: AppFonts.circularStd,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
