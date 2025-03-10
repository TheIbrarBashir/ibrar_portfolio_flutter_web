import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_strings.dart';
import 'package:flutter_portfolio/constants/colors.dart';
import 'package:flutter_portfolio/constants/const.dart';
import 'package:flutter_portfolio/constants/styles.dart';
import 'package:flutter_portfolio/localization/text_keys.dart';
import 'package:flutter_portfolio/widgets/drawer_image.dart';
import 'package:flutter_portfolio/widgets/gradient_text.dart';
import 'package:get/get.dart';

class AboutSection extends StatelessWidget {
  final Size size;
  final double imageHeight;

  const AboutSection(
      {super.key, required this.size, required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.ebony,
      padding: EdgeInsets.symmetric(
          vertical: width() * 0.05, horizontal: width() * 0.05),
      child: Column(
        children: <Widget>[
          GradientTextWidget(size: size, text1: TextKeys.aboutME.tr),
          verticalSpace(0.01),
          width() > 950
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: width() * 0.8,
                      child: Text(
                        AppString.aboutMe,
                        style: TextStyles.style16regular.copyWith(height: 3),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    verticalSpaceMedium(),
                    Text(
                      AppString.aboutMe,
                      style: TextStyles.style16regular.copyWith(height: 3),
                      textAlign: TextAlign.justify,
                    ),
                    verticalSpace(0.05),
                  ],
                ),
          verticalSpace(0.05),
        ],
      ),
    );
  }
}
