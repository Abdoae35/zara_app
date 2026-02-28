import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 61),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  backLeading(),
                  SizedBox(width: 262),
                  containricons(iconPath: AppAssets.heart),
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
                    padding: const EdgeInsetsGeometry.fromLTRB(24, 24, 0, 0),

                    child: Image.asset(image[index], fit: BoxFit.cover),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(children: [Text("Men's Harrington Jacket")]),
                  SizedBox(height: 15),
                  Row(children: [Text("\$148")]),
                ],
              ),
            ),

            SizedBox(height: 9),

            Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(24, 0, 24, 0),
              child: Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.backgroundBlur,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Text("Size"),
                    SizedBox(width: 211),
                    Text("S"),
                    SizedBox(width: 29),
                    SvgPicture.asset(AppAssets.arrowDown),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),

            Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(24, 0, 24, 0),
              child: Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.backgroundBlur,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Text("color"),
                    SizedBox(width: 199),
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Color(0xffB3B68B),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(width: 29),
                    SvgPicture.asset(AppAssets.arrowDown),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(24, 0, 24, 0),
              child: Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.backgroundBlur,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Text("Quantity"),
                    SizedBox(width: 105),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppAssets.add),
                      ),
                    ),

                    SizedBox(width: 23),
                    Text("1"),
                    SizedBox(width: 23),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(AppAssets.remove),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(24, 26, 24, 75),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Built for life and made to last, this full-zip corduroy jacket is",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "part of our Nike Life collection. The spacious fit gives you ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "plenty of room to layer underneath, while the soft corduroy",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "keeps it casual and timeless.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24),
                  Column(
                    children: [
                      Row(children: [Text("Shipping & Returns")]),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            "Free standard shipping and free 60-day returns",
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(children: [Text("Reviews")]),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(children: [Text("4.5 Ratings")]),
                  SizedBox(height: 12),
                  Row(children: [Text("213 Reviews")]),
                  SizedBox(height: 16),
                  RatingContainar(image: "assets/images/Ellipse 15.png"),
                  SizedBox(height: 12),
                  RatingContainar(image: "assets/images/Ellipse 15 (1).png"),
                  SizedBox(height: 75),

                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                      ),
                      child: Row(
                        children: [
                          Text("\$148", style: TextStyle(color: Colors.white)),
                          SizedBox(width: 181),
                          Text(
                            "Add to Bag",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
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

class RatingContainar extends StatelessWidget {
  final String image;
  const RatingContainar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            SizedBox(width: 12),
            Text("Alex Morgan"),

            SizedBox(width: 100),
            Icon(Icons.star, color: AppColors.primaryColor),
            Icon(Icons.star, color: AppColors.primaryColor),
            Icon(Icons.star, color: AppColors.primaryColor),
            Icon(Icons.star, color: Color(0xffF4F4F4)),
            Icon(Icons.star, color: Color(0xffF4F4F4)),
          ],
        ),
        SizedBox(height: 4),
        Text(
          "Gucci transcribes its heritage, creativity, and innovation into a \nplenitude of collections. From staple items to distinctive \naccessories.",
        ),
        SizedBox(height: 4),
        Row(children: [Text("12days ago")]),
      ],
    );
  }
}
