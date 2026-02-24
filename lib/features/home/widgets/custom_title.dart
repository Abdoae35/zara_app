import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';

class customTitle extends StatelessWidget {
  const customTitle({super.key, required this.label, this.style});
  final String label;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style:
          style ??
          TextStyle(
            fontFamily: AppFonts.gabarito,
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
    );
  }
}
