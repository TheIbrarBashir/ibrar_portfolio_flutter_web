import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/colors.dart';
import 'package:flutter_portfolio/constants/const.dart';
import 'package:flutter_portfolio/data/education_experience.dart';
import 'package:flutter_portfolio/widgets/gradient_text.dart';
import 'package:flutter_portfolio/widgets/resume_card.dart';
import 'package:get/get.dart';

import '../../localization/text_keys.dart';

class ResumeSection extends StatelessWidget {
  final Size size;

  const ResumeSection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.ebony,
      ),
      width: width(),
      padding: EdgeInsets.symmetric(
          vertical: width() * 0.05, horizontal: width() * 0.05),
      child: width() > 600
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width() > 950 ? width() * 0.3 : width() * 0.4,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/experience.png",
                              height: width() > 950
                                  ? width() * 0.03
                                  : width() * 0.05,
                              color: AppColors.studio,
                            ),
                          ),
                          GradientTextWidget(
                              size: size, text1: TextKeys.myExperience.tr),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: experienceList.length,
                        separatorBuilder: (context, index) =>
                            verticalSpaceMedium(),
                        itemBuilder: (context, index) {
                          final experienceItem =
                              experienceList.elementAt(index);
                          return ResumeCard(
                            title: experienceItem.title,
                            indexKey: "KEY_${experienceItem.company}$index",
                            date: experienceItem.date,
                            company: experienceItem.company,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width() > 950 ? width() * 0.3 : width() * 0.4,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/education.png",
                              height: width() > 950
                                  ? width() * 0.03
                                  : width() * 0.05,
                              color: AppColors.studio,
                            ),
                          ),
                          GradientTextWidget(
                              size: size, text1: TextKeys.myEducation.tr),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: educationList.length,
                        separatorBuilder: (context, index) =>
                            verticalSpaceMedium(),
                        itemBuilder: (context, index) {
                          final educationItem = educationList[index];
                          return ResumeCard(
                            title: educationItem.title,
                            indexKey: "KEY_${educationItem.company}_$index",
                            date: educationItem.date,
                            company: educationItem.company,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              children: [
                SizedBox(
                  width: width() < 600 ? width() * 0.8 : width() * 0.6,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              "assets/icons/experience.png",
                              height: width() * 0.1,
                              color: AppColors.studio,
                            ),
                          ),
                          GradientTextWidget(
                              size: size, text1: TextKeys.myExperience.tr),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: experienceList.length,
                        separatorBuilder: (context, index) =>
                            verticalSpaceMedium(),
                        itemBuilder: (context, index) {
                          final experienceItem =
                          experienceList.elementAt(index);
                          return ResumeCard(
                            title: experienceItem.title,
                            indexKey: "KEY_${experienceItem.company}$index",
                            date: experienceItem.date,
                            company: experienceItem.company,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(0.05),
                SizedBox(
                  width: width() < 600 ? width() * 0.8 : width() * 0.6,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/education.png",
                              height: width() * 0.1,
                              color: AppColors.studio,
                            ),
                          ),
                          GradientTextWidget(
                              size: size, text1: TextKeys.myEducation.tr),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: educationList.length,
                        separatorBuilder: (context, index) =>
                            verticalSpaceMedium(),
                        itemBuilder: (context, index) {
                          final educationItem = educationList[index];
                          return ResumeCard(
                            title: educationItem.title,
                            indexKey: "KEY_${educationItem.company}_$index",
                            date: educationItem.date,
                            company: educationItem.company,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(0.05),
              ],
            ),
    );
  }
}
