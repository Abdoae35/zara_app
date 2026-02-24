import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/main/main_app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.backgroundColor,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? SizedBox.shrink(),
        );
      },
      home: MainAppScreen(),
    );
  }
}
