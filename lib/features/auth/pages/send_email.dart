import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/functions/push_to.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/auth/pages/about_yourself.dart';

class SendEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Center(child: Image.asset(AppAssets.email)),
            SizedBox(height: 24),

            Text(
              'We Sent you an Email to reset\n your password.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: AppFonts.circularStd,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 24),

            SizedBox(
              width: 170,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  pushTo(context, AboutYourself());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                child: Text(
                  'Return to Login',
                  maxLines: 1,
                  style: TextStyle(
                    color: AppColors.backgroundColor,
                    fontSize: 16,
                    fontFamily: AppFonts.circularStd,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
