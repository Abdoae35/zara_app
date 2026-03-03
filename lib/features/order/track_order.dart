import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.blackColor),
          onPressed: () => Navigator.pop(context), // رجوع
        ),
        centerTitle: true,
        title: const Text(
          "Order #456765",
          style: TextStyle(
            color: AppColors.blackColor,
            fontFamily: AppFonts.gabarito,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatusStep("Delivered", "28 May", isCompleted: false),
            _buildStatusStep("Shipped", "28 May", isCompleted: true),
            _buildStatusStep("Order Confirmed", "28 May", isCompleted: true),
            _buildStatusStep("Order Placed", "28 May", isCompleted: true, isLast: true),
            
            const SizedBox(height: 32),
            _buildSectionTitle("Order Items"),
            const SizedBox(height: 16),

            _buildInfoCard(
              child: Row(
                children: [
                  SvgPicture.asset(AppAssets.order, width: 24),
                  const SizedBox(width: 16),
                  const Text("4 items", style: TextStyle(fontSize: 16, fontFamily: AppFonts.circularStd)),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View All", style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            _buildSectionTitle("Shipping details"),
            const SizedBox(height: 16),

            _buildInfoCard(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2715 Ash Dr. San Jose, South Dakota 83475", style: TextStyle(height: 1.5, fontFamily: AppFonts.circularStd)),
                  SizedBox(height: 8),
                  Text("121-224-7890", style: TextStyle(color: Colors.grey, fontFamily: AppFonts.circularStd)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: AppFonts.gabarito,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: AppColors.textColor,
      ),
    );
  }

  Widget _buildInfoCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.inputBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }

  Widget _buildStatusStep(String title, String date, {required bool isCompleted, bool isLast = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? AppColors.primaryColor : Colors.transparent,
                border: Border.all(
                  color: isCompleted ? AppColors.primaryColor : Colors.grey.shade300,
                  width: 2,
                ),
              ),
              child: isCompleted ? const Icon(Icons.check, color: Colors.white, size: 14) : null,
            ),
            if (!isLast)
              Container(width: 2, height: 40, color: isCompleted ? AppColors.primaryColor : Colors.grey.shade200),
          ],
        ),
        const SizedBox(width: 16),
        Text(title, style: TextStyle(fontSize: 16, fontFamily: AppFonts.circularStd, color: isCompleted ? AppColors.blackColor : Colors.grey)),
        const Spacer(),
        Text(date, style: const TextStyle(color: Colors.grey, fontFamily: AppFonts.circularStd)),
      ],
    );
  }
}