import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';
import 'package:zara_app/features/checkout/pages/order_placed_page.dart';

class CheckoutPage2 extends StatelessWidget {
  const CheckoutPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 80,
        leading: backLeading(),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: const Text(
          "Checkout",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            _buildSelectionCard(
              "Shipping Address",
              "2715 Ash Dr. San Jose, South Dakot...",
              null,
            ),
            const SizedBox(height: 16),
            _buildSelectionCard("Payment Method", "**** 4187", Icons.circle),
            const Spacer(),
            _buildPriceSummary(),
            const SizedBox(height: 32),
            _buildPlaceOrderButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectionCard(String title, String subtitle, IconData? icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    if (icon != null) ...[
                      SvgPicture.asset(AppAssets.masterCard),
                      const SizedBox(width: 8),
                    ],
                    Expanded(
                      child: Text(
                        subtitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }

  Widget _buildPriceSummary() {
    return const Column(
      children: [
        _PriceRow(label: "Subtotal", value: "\$200"),
        _PriceRow(label: "Shipping Cost", value: "\$8.00"),
        _PriceRow(label: "Tax", value: "\$0.00"),
        _PriceRow(label: "Total", value: "\$208", isBold: true),
      ],
    );
  }

  Widget _buildPlaceOrderButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OrderPlacedSuccess()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$208",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            "Place Order",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;
  const _PriceRow({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isBold ? Colors.black : Colors.grey,
              fontSize: 15,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
