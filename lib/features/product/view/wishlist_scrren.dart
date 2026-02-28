import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';

class WishlistScrren extends StatelessWidget {
  const WishlistScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backLeading(),
        centerTitle: true,
        title: Text(
          "Wishlist (12)",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: const [
                        Expanded(
                          child: FavContainar(
                            image: "assets/images/NikeFuelPack.png",
                            title: "Nike Fuel Pack",
                            price: "\$32.00",
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: FavContainar(
                            image: "assets/images/NikeShowXRush.png",
                            title: "Nike Show X Rush",
                            price: "\$204.00",
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: Row(
                      children: const [
                        Expanded(
                          child: FavContainar(
                            image: "assets/images/MensT-Shirt.png",
                            title: "Men's T-Shirt",
                            price: "\$45.00",
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: FavContainar(
                            image: "assets/images/MensSkateT-Shirt.png",
                            title: "Men's Skate T-Shirt",
                            price: "\$45.00",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavContainar extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const FavContainar({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 281,
      color: AppColors.backgroundBlur,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Icon(Icons.favorite, color: AppColors.redColor),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),

          const SizedBox(height: 6),

          Text(
            price,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
