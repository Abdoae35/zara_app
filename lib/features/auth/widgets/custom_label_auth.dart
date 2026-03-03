import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';

class CustomLabelAuth extends StatelessWidget {
  final String data;
  const CustomLabelAuth({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: 32,
        fontFamily: AppFonts.circularStd,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
