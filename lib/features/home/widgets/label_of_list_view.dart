import 'package:flutter/material.dart';
import 'package:zara_app/features/home/widgets/custom_title.dart';
import 'package:zara_app/features/home/widgets/see_all_text.dart';

class labelOfListView extends StatelessWidget {
  final String label;
  final TextStyle? style;
  const labelOfListView({super.key, required this.label, this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customTitle(label: label, style: style),
          seeAllText(),
        ],
      ),
    );
  }
}
