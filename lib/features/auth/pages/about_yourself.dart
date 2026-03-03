import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_app/core/constants/app_assets.dart';
import 'package:zara_app/core/constants/app_fonts.dart';
import 'package:zara_app/core/functions/push_to.dart';
import 'package:zara_app/core/styles/app_colors.dart';
import 'package:zara_app/features/auth/widgets/continue_button.dart';
import 'package:zara_app/features/auth/widgets/cutome_title.dart';
import 'package:zara_app/features/auth/widgets/gender.dart';
import 'package:zara_app/features/home/pages/home_page.dart';
import 'package:zara_app/features/main/main_app_screen.dart';

class AboutYourself extends StatefulWidget {
  const AboutYourself({super.key});

  @override
  State<AboutYourself> createState() => _AboutYourselfState();
}

class _AboutYourselfState extends State<AboutYourself> {
  bool isMenSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 161),
                  Text(
                    'Tell us About yourself',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppFonts.gabarito,
                    ),
                  ),
                  SizedBox(height: 49),
                  CutomeTitle(title: 'Who do you shop for ?'),
                  SizedBox(height: 22),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMenSelected = true;
                          });
                        },
                        child: Gender(
                          IsMenSelected: isMenSelected,
                          gender: 'Men',
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMenSelected = false;
                          });
                        },
                        child: Gender(
                          IsMenSelected: !isMenSelected,
                          gender: 'Women',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 56),
                  CutomeTitle(title: 'How Old are you ?'),
                  SizedBox(height: 13),
                  DropdownButtonFormField<String>(
                    dropdownColor: AppColors.inputBackgroundColor,
                    isDense: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.inputBackgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                    ),
                    hint: Text('Age Range'),
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 16.0,
                      ),
                      child: SvgPicture.asset(AppAssets.arrowDown, height: 10),
                    ),
                    items: [
                      DropdownMenuItem(value: '18-24', child: Text('18-24')),
                      DropdownMenuItem(value: '25-34', child: Text('25-34')),
                      DropdownMenuItem(value: '35-44', child: Text('35-44')),
                      DropdownMenuItem(value: '45+', child: Text('45+')),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),

          Container(
            color: AppColors.inputBackgroundColor,
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 28,
              left: 24,
              right: 24,
            ),
            child: ContinueButton(
              label: 'Finish',
              onPress: () {
                pushRemoveAll(context, MainAppScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
