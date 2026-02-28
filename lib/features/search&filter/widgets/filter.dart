import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class filter extends StatefulWidget {
  final String label;
  final String? prefixIcon;
  final String? suffexIcon;
  final Color backGroundColor;
  final Color textColor;
  final List<String> dataList;
  final String labelBottomSheet;

  const filter({
    super.key,
    required this.label,
    this.prefixIcon,
    this.suffexIcon,
    required this.backGroundColor,
    required this.textColor,
    required this.dataList,
    required this.labelBottomSheet,
  });

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  int selectedIndex = -1;

  bool isSeleted = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            useSafeArea: true,
            backgroundColor: AppColors.backgroundColor,
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setModalState) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 26,
                            vertical: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setModalState(() {
                                    selectedIndex = -1;
                                  });
                                },
                                child: Text(
                                  'Clear',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontFamily: AppFonts.circularStd,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Text(
                                widget.labelBottomSheet,
                                style: TextStyle(
                                  fontFamily: AppFonts.gabarito,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              CloseButton(color: AppColors.blackColor),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 350,
                                child: ListView.separated(
                                  itemCount: widget.dataList.length,
                                  itemBuilder: (context, index) {
                                    final isSelected = selectedIndex == index;
                                    return GestureDetector(
                                      onTap: () {
                                        setModalState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            35,
                                          ),
                                          color: isSelected
                                              ? AppColors.primaryColor
                                              : Color(0xffF4F4F4),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 34,
                                            vertical: 19,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                widget.dataList[index],
                                                style: TextStyle(
                                                  color: isSelected
                                                      ? AppColors
                                                            .backgroundColor
                                                      : AppColors.blackColor,
                                                  fontSize: 16,
                                                  fontFamily:
                                                      AppFonts.circularStd,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              if (isSelected)
                                                SvgPicture.asset(
                                                  AppAssets.truee,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: widget.backGroundColor,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(widget.prefixIcon ?? '', height: 25),
                SizedBox(width: 4),
                Text(
                  widget.label,
                  style: TextStyle(
                    color: widget.textColor,
                    fontFamily: AppFonts.circularStd,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),

                SvgPicture.asset(
                  widget.suffexIcon ?? '',
                  height: 13,
                  colorFilter: ColorFilter.mode(
                    widget.textColor,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
