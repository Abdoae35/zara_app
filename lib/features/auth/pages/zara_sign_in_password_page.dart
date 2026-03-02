import 'package:flutter/material.dart';
import 'package:zara_app/core/functions/push_to.dart';
import 'package:zara_app/features/auth/pages/forget_pass.dart';
import 'package:zara_app/features/auth/widgets/continue_button.dart';
import 'package:zara_app/features/auth/widgets/custom_label_auth.dart';
import 'package:zara_app/features/main/main_app_screen.dart';

class ZaraSignInPasswordPage extends StatelessWidget {
  const ZaraSignInPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLabelAuth(data: 'Sign In'),
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ContinueButton(
                  onPress: () {
                    pushReplaceMent(context, MainAppScreen());
                  },
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  pushTo(context, ForgetPass());
                },
                child: const Text(
                  'Forgot Password ? Reset',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
