import 'package:flutter/material.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/product/view/wishlist_scrren.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 124),
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset("assets/images/Ellipse 14.png"),
              ),
              SizedBox(height: 32),
              Expanded(
                child: Container(
                  width: 342,
                  color: AppColors.backgroundBlur,
                  height: 96,
                  child: Column(
                    children: [
                      SizedBox(height: 13),
                      Row(
                        children: [
                          Text(
                            "Gilbert Jones",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: AppFonts.gabarito,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Glbertjones001@gmail.com",
                            style: TextStyle(
                              color: AppColors.blackColor.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Edit",
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "121-224-7890",
                            style: TextStyle(
                              color: AppColors.blackColor.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26),
              Container(
                color: AppColors.backgroundBlur,
                width: 342,
                height: 58,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WishlistScrren(),
                            ),
                          );
                        },
                        child: Text(
                          "Wishlist",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.circularStd,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                color: AppColors.backgroundBlur,
                width: 342,
                height: 58,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.circularStd,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                color: AppColors.backgroundBlur,
                width: 342,
                height: 58,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Support",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.circularStd,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 163),
              Text(
                "Sign Out",
                style: TextStyle(
                  color: AppColors.redColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppFonts.gabarito,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
