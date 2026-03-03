import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/functions/push_to.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/order/pages/track_order.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<String> orderTypes = [
    "Processing",
    "Shipped",
    "Delivered",
    "Returned",
    "Cancelled",
  ];
 
  int selectedIndex = 0;
  int processingIndex = 0;
  int shippedIndex = 1;
  int deliveredIndex = 2;
  int returnedIndex = 3;
  int cancelledIndex = 4;
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
                _buildFilterChip(
                  orderTypes[processingIndex],
                  processingIndex,
                  selectedIndex,
                ),
                _buildFilterChip(
                  orderTypes[shippedIndex],
                  shippedIndex,
                  selectedIndex,
                ),
                _buildFilterChip(
                  orderTypes[deliveredIndex],
                  deliveredIndex,
                  selectedIndex,
                ),
                _buildFilterChip(
                  orderTypes[returnedIndex],
                  returnedIndex,
                  selectedIndex,
                ),
                _buildFilterChip(
                  orderTypes[cancelledIndex],
                  cancelledIndex,
                  selectedIndex,
                ),
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
                      pushTo(context, TrackOrderScreen());
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

  Widget _buildFilterChip(String label, int index, int selectedIndex) {
    bool isSelected = index == selectedIndex;
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
        onSelected: (val) {
          setState(() {
            this.selectedIndex = index;
          });
        },
      ),
    );
  }
}
