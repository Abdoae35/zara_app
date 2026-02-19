import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';

class categoryIcon extends StatelessWidget {
  final String Path;
  const categoryIcon({super.key, required this.Path});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Image.asset(Path, fit: BoxFit.contain, height: 50, width: 50),
      ),
    );
  }
}
