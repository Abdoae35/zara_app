import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class containricons extends StatelessWidget {
  final IconData icon;
  const containricons({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,

      decoration: BoxDecoration(
        color: AppColors.backgroundBlur,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(icon),
    );
  }
}
