import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/order/track_order.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Orders",
          style: TextStyle(
            fontFamily: AppFonts.gabarito,
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _buildFilterChip("Processing", true),
                _buildFilterChip("Shipped", false),
                _buildFilterChip("Delivered", false),
                _buildFilterChip("Returned", false),
                _buildFilterChip("Cancelled", false),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 3,  
              itemBuilder: (context, index) {
                List<String> orderIds = ["456765", "454569", "454809"];
                List<String> itemsCount = ["4 items", "2 items", "1 items"];

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: AppColors.inputBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset(AppAssets.order, width: 24),
                    title: Text(
                      "Order #${orderIds[index]}",
                      style: const TextStyle(
                        fontFamily: AppFonts.circularStd,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    subtitle: Text(
                      itemsCount[index],
                      style: const TextStyle(
                        fontFamily: AppFonts.circularStd,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: SvgPicture.asset(AppAssets.arrowright, width: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrackOrderScreen(),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: isSelected,
        selectedColor: AppColors.primaryColor,
        labelStyle: TextStyle(
          fontFamily: AppFonts.circularStd,
          color: isSelected ? Colors.white : AppColors.textColor,
          fontSize: 12,
        ),
        backgroundColor: AppColors.inputBackgroundColor,
        shape: const StadiumBorder(side: BorderSide.none),
        onSelected: (val) {},
      ),
    );
  }
}
