import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/product/widget/icon_container.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<String> image = [
    "assets/images/MensHarringtonJacket.png",
    "assets/images/Rectangle 10.png",
    "assets/images/44ba888cfb4ba715388632c08bcead8fe7d7cbb8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
          child: SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("\$148", style: TextStyle(color: Colors.white)),
                  Text("Add to Bag", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 61),

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  containricons(icon: Icons.chevron_left),
                  containricons(icon: Icons.favorite_border),
                ],
              ),
            ),

            
            SizedBox(
              height: 248,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 0, 0),
                    child: Image.asset(image[index], fit: BoxFit.cover),
                  );
                },
              ),
            ),

           
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Men's Harrington Jacket"),
                  SizedBox(height: 15),
                  Text("\$148"),
                ],
              ),
            ),

            const SizedBox(height: 9),

            
            _infoContainer(
              child: Row(
                children: const [
                  SizedBox(width: 16),
                  Text("Size"),
                  Spacer(),
                  Text("S"),
                  SizedBox(width: 12),
                  Icon(Icons.keyboard_arrow_down),
                  SizedBox(width: 16),
                ],
              ),
            ),

            const SizedBox(height: 12),

            _infoContainer(
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  const Text("Color"),
                  const Spacer(),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: const Color(0xffB3B68B),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.keyboard_arrow_down),
                  const SizedBox(width: 16),
                ],
              ),
            ),

            const SizedBox(height: 12),

            _infoContainer(
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  const Text("Quantity"),
                  const Spacer(),
                  _circleBtn(Icons.add),
                  const SizedBox(width: 23),
                  const Text("1"),
                  const SizedBox(width: 23),
                  _circleBtn(Icons.remove),
                  const SizedBox(width: 16),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 26, 24, 75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Built for life and made to last, this full-zip corduroy jacket is",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "part of our Nike Life collection. The spacious fit gives you",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "plenty of room to layer underneath, while the soft corduroy",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    "keeps it casual and timeless.",
                    style: TextStyle(fontSize: 12),
                  ),

                  const SizedBox(height: 24),
                  const Text("Shipping & Returns"),
                  const SizedBox(height: 12),
                  const Text("Free standard shipping and free 60-day returns"),
                  const SizedBox(height: 24),
                  const Text("Reviews"),
                  const SizedBox(height: 12),
                  const Text("4.5 Ratings"),
                  const SizedBox(height: 12),
                  const Text("213 Reviews"),
                  const SizedBox(height: 16),

                  const RatingContainar(image: "assets/images/Ellipse 15.png"),
                  const SizedBox(height: 12),
                  const RatingContainar(
                    image: "assets/images/Ellipse 15 (1).png",
                  ),

                  const SizedBox(height: 75),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleBtn(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(icon, color: AppColors.inputBackgroundColor),
    );
  }

  Widget _infoContainer({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: 342,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.backgroundBlur,
          borderRadius: BorderRadius.circular(20),
        ),
        child: child,
      ),
    );
  }
}

class RatingContainar extends StatelessWidget {
  final String image;
  const RatingContainar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(image),
            ),
            const SizedBox(width: 12),
            const Text("Alex Morgan"),
            const Spacer(),
            Icon(Icons.star, color: AppColors.primaryColor),
            Icon(Icons.star, color: AppColors.primaryColor),
            Icon(Icons.star, color: AppColors.primaryColor),
            const Icon(Icons.star, color: Color(0xffF4F4F4)),
            const Icon(Icons.star, color: Color(0xffF4F4F4)),
          ],
        ),
        const SizedBox(height: 4),
        const Text(
          "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections.",
        ),
        const SizedBox(height: 4),
        const Text("12days ago"),
      ],
    );
  }
}
