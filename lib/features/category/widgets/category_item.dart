import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/category_icon.dart';

class categoryItem extends StatelessWidget {
  final String label;
  final String path;
  const categoryItem({super.key, required this.path, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.inputBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              children: [
                categoryIcon(Path: path),
                SizedBox(width: 16),
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: AppFonts.circularStd,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
