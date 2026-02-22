import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.name,
    required this.imagePath,
    this.isSelected = false,
    Action,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tapped $name');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.inputBackgroundColor,
                border: isSelected
                    ? Border.all(color: AppColors.primaryColor, width: 3)
                    : null,
              ),
              child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Image.asset(imagePath, fit: BoxFit.contain),
                ),
              ),
            ),
            const SizedBox(height: 8),
            
            Text(
              name,
              style: TextStyle(
                fontFamily: AppFonts.circularStd,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
