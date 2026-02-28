import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class containricons extends StatelessWidget {
  final String iconPath;
  const containricons({required this.iconPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.inputBackgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(child: SvgPicture.asset(iconPath, width: 24, height: 24)),
    );
  }
}
