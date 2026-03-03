import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/text_styles.dart';

class SizeChooseSheet extends StatelessWidget {
  const SizeChooseSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sizes = ["S", "M", "L", "XL"];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Size",
            style: TextStyles.headline.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: AppFonts.circularStd,
            ),
          ),
          const SizedBox(height: 20),

          ...sizes.map(
            (size) => ListTile(
              title: Text(size),
              onTap: () => Navigator.pop(context, size),
            ),
          ),
        ],
      ),
    );
  }
}
