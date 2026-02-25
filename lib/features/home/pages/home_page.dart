import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/page/category_screen.dart';
import 'package:zara_app/features/home/widgets/category_item.dart';
import 'package:zara_app/features/home/widgets/custom_title.dart';
import 'package:zara_app/features/home/widgets/label_of_list_view.dart';
import 'package:zara_app/features/home/widgets/list_view_section.dart';
import 'package:zara_app/features/home/widgets/search_form.dart';
import 'package:zara_app/features/home/widgets/see_all_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        leadingWidth: 64,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ClipOval(
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Image.asset(AppAssets.homeIcon, fit: BoxFit.contain),
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.inputBackgroundColor,
              borderRadius: BorderRadius.circular(23),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Men',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 7),
                SvgPicture.asset(AppAssets.arrowDown),
              ],
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.primaryColor,
              child: SvgPicture.asset(AppAssets.cart, height: 24),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: searchForm(),
            ),

            SizedBox(height: 20),

            // Categories header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTitle(label: 'Categories'),
                  seeAllText(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.5),

            // Categories
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                children: [
                  CategoryItem(name: 'Hoodies', imagePath: AppAssets.hoodies),
                  CategoryItem(name: 'Shorts', imagePath: AppAssets.shortss),
                  CategoryItem(name: 'Shoes', imagePath: AppAssets.shoes),
                  CategoryItem(name: 'Bag', imagePath: AppAssets.bag),
                  CategoryItem(
                    name: 'Accessories',
                    imagePath: AppAssets.accessories,
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Top Selling section
            labelOfListView(label: 'Top Selling'),
            SizedBox(height: 16),
            listViewSection(),

            SizedBox(height: 16),

            // New In section
            labelOfListView(
              label: 'New In',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: AppFonts.gabarito,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16),
            listViewSection(),

            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
