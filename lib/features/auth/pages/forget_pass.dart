import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/functions/push_to.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/auth/pages/send_email.dart';
import 'package:zara_app/features/auth/widgets/continue_button.dart';
import 'package:zara_app/features/auth/widgets/custom_form.dart';
import 'package:zara_app/features/auth/widgets/custom_label_auth.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';

class ForgetPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: backLeading(),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 20),
            CustomLabelAuth(data: 'Forgot Password'),
            SizedBox(height: 35),
            CustomForm(hint: 'Enter Email address'),
            SizedBox(height: 24),
            ContinueButton(
              onPress: () {
                pushTo(context, SendEmail());
              },
            ),
          ],
        ),
      ),
    );
  }
}
