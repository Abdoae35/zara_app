import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/core/styles/text_styles.dart';

class InfoContainer extends StatefulWidget {
  const InfoContainer({
    super.key,
    required this.child,
    required this.onColorSelected,
  });

  final Widget child;
  final Function(Color) onColorSelected;
  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () async {
          final selectedColor = await showModalBottomSheet<Color>(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Color",
                      style: TextStyles.headline.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: AppFonts.gabarito,
                      ),
                    ),
                    const SizedBox(height: 20),

                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Orange",
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                          Spacer(),

                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.pop(context, Colors.orange),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Black",
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                          Spacer(),

                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.pop(context, Colors.black),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Red",
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                          Spacer(),

                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.pop(context, Colors.red),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Yellow",
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                          Spacer(),

                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.pop(context, Colors.yellow),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Blue",
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.circularStd,
                            ),
                          ),
                          Spacer(),

                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.pop(context, Colors.blue),
                    ),
                  ],
                ),
              );
            },
          );

          if (selectedColor != null) {
            widget.onColorSelected(selectedColor);
          }
        },
        child: Container(
          width: 342,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.backgroundBlur,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
