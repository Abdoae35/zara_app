import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class searchForm extends StatelessWidget {
  final bool enable;
  final Widget? suffixIcon; 

  const searchForm({
    super.key,
    this.enable = false,
    this.suffixIcon,
  }); 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: TextFormField(
          enabled: enable,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
            label: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Search",
                style: TextStyle(
                  fontFamily: AppFonts.circularStd,
                  fontSize: 12,
                ),
              ),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 19),
              child: SvgPicture.asset(AppAssets.search, height: 16, width: 16),
            ),
            suffixIcon: suffixIcon, 
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            fillColor: AppColors.inputBackgroundColor,
            filled: true,
          ),
        ),
      ),
    );
  }
}
