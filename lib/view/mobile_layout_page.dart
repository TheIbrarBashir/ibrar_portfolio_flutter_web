import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/const.dart';
import 'package:flutter_portfolio/view/sections/contact_me_section.dart';
import 'package:flutter_portfolio/widgets/navbar.dart';
import 'package:flutter_portfolio/view/sections/about_section.dart';
import 'package:flutter_portfolio/widgets/header_text_widget.dart';
import 'package:flutter_portfolio/widgets/rotating_image_widget.dart';
import 'package:flutter_portfolio/view/sections/my_skills_section.dart';
import 'package:flutter_portfolio/view/sections/projects_section.dart';
import 'package:flutter_portfolio/view/sections/education_experience_section.dart';
import 'package:flutter_portfolio/widgets/social_tab.dart';
import 'package:flutter_portfolio/view/sections/stats_section.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: ResponsiveNavBar(
              onItemSelected: (String item) {
                if (item == 'About') scrollToSection(aboutKey);
                if (item == 'Projects') scrollToSection(projectsKey);
                if (item == 'Resume') scrollToSection(resumeKey);
                if (item == 'Skills') scrollToSection(skillsKey);
                if (item == 'Contact') scrollToSection(contactKey);
              },
            ),
          ),
          const RotatingImageContainer(),
          verticalSpace(0.05),
          HeaderTextWidget(size: size),
          verticalSpace(0.08),
          SocialTab(size: size),
          verticalSpace(0.06),
          StatsSection(size: size),
          verticalSpace(0.08),
          AboutSection(key: aboutKey, size: size, imageHeight: size.height * 0.3),
           ProjectsSection(key: projectsKey,),
          verticalSpace(0.05),
          ResumeSection(key: resumeKey, size: size),
          verticalSpace(0.05),
          MySkillsSection(
            key: skillsKey,
            size: size,
          ),
          verticalSpace(0.05),
           ContactMeSection(
            key: contactKey,
            size: size,
          ),
        ],
      ),
    );
  }
}
