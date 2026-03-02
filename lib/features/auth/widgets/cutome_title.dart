import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';

class CutomeTitle extends StatelessWidget {
  final String title;
  const CutomeTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
     title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.circularStd,
      ),
    );
  }
}
