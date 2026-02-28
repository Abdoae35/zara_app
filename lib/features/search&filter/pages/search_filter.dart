import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/category/widgets/back_leading.dart';
import 'package:zara_app/features/home/widgets/card_view.dart';
import 'package:zara_app/features/home/widgets/search_form.dart';
import 'package:zara_app/features/hoodies/widgets/gird_view_display.dart';
import 'package:zara_app/features/search&filter/widgets/filter.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final int cardCount = 6;
  List<String> Sort = [
    'Recommended',
    'Newest',
    'Lowest - Highest Price',
    'Highest - Lowest Price',
  ];
  List<String> Gender = ['Men', 'Women', 'Kids'];
  List<String> Deals = ['On sale', 'Free Shipping Eligible'];
  List<String> Price = ['Min', 'Max'];
  List<String> filterList = ['Deals', 'Price', 'Sort By', 'Gender'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 66),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  backLeading(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Hero(
                        tag: 'searchTag',
                        child: searchForm(
                          enable: true,

                          suffixIcon: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                AppAssets.x,
                                height: 16,
                                width: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  children: [
                    Row(
                      children: [
                        filter(
                          labelBottomSheet: 'Filter',
                          dataList: filterList,
                          label: '2',
                          prefixIcon: AppAssets.filter,
                          textColor: Colors.white,
                          backGroundColor: AppColors.primaryColor,
                        ),
                        SizedBox(width: 5),
                        filter(
                          dataList: Deals,
                          labelBottomSheet: 'Deals',
                          label: 'On Sale',
                          textColor: Colors.black,
                          backGroundColor: AppColors.inputBackgroundColor,
                        ),
                        SizedBox(width: 5),
                        filter(
                          labelBottomSheet: 'Price',
                          dataList: Price,
                          label: 'Price',
                          textColor: Colors.white,
                          backGroundColor: AppColors.primaryColor,
                          suffexIcon: AppAssets.arrowDown,
                        ),
                        SizedBox(width: 5),
                        filter(
                          labelBottomSheet: 'Sort By',
                          dataList: Sort,
                          label: 'Sort  by',
                          textColor: Colors.black,
                          backGroundColor: AppColors.inputBackgroundColor,
                          suffexIcon: AppAssets.arrowDown,
                        ),
                        SizedBox(width: 5),
                        filter(
                          labelBottomSheet: 'Gender',
                          dataList: Gender,
                          label: 'Men',
                          textColor: Colors.white,
                          backGroundColor: AppColors.primaryColor,
                          suffexIcon: AppAssets.arrowDown,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),
            Column(
              crossAxisAlignment: .start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    '$cardCount Results Found',
                    style: TextStyle(
                      fontFamily: AppFonts.circularStd,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                girdViewDisplay(
                  cardCount: cardCount,
                  cardList: [
                    // Card 1
                    cardView(
                      path: AppAssets.item1,
                      label: 'Men\'s Fleece Pullover Hoodie',
                      price: '\$100.00',
                    ),

                    // Card 2
                    cardView(
                      path: AppAssets.item2,
                      label: 'Fleece Pullover Skate Hoodie',
                      price: '\$85.00',
                    ),

                    // Card 3
                    cardView(
                      path: AppAssets.item3,
                      label: 'Men\'s Ice-Dye Pullover Hoodie',
                      price: '\$128.97',
                    ),

                    // Card 4
                    cardView(
                      path: AppAssets.item4,
                      label: 'Crop Hoodie',
                      price: '\$95.00',
                    ),

                    // Card 5
                    cardView(
                      path: AppAssets.item1,
                      label: 'Tech Fleece Hoodie',
                      price: '\$150.00',
                    ),

                    // Card 6
                    cardView(
                      path: AppAssets.MensFleecePulloverHoodie,
                      label: 'Performance Hoodie',
                      price: '\$110.00',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
