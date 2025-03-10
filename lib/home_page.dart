import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/desktop_layout_page.dart';
import 'package:flutter_portfolio/view/mobile_layout_page.dart';
import 'package:flutter_portfolio/view/tablet_layout_page.dart';
import 'package:flutter_portfolio/widgets/custom_fab.dart';
import 'package:flutter_portfolio/widgets/navbar.dart';

import 'constants/const.dart';
import 'constants/gradient_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController =
        ScrollController(); // Initialize a ScrollController

    return Scaffold(
      endDrawer: width() < 950
          ? MobileDrawer(
              menuItems: const [
                'About',
                'Projects',
                'Resume',
                'Skills',
                'Contact',
              ],
              onItemSelected: (item) {
                // Handle mobile drawer item selection
                if (item == 'About') scrollToSection(aboutKey);
                if (item == 'Projects') scrollToSection(projectsKey);
                if (item == 'Resume') scrollToSection(resumeKey);
                if (item == 'Skills') scrollToSection(skillsKey);
                if (item == 'Contact') scrollToSection(contactKey);
                Navigator.of(context).pop(); // Close the drawer after selection
              },
            )
          : null,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: Styles.gradientDecoration,
            child: SingleChildScrollView(
              controller: scrollController, // Attach ScrollController
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 950) {
                    return const DesktopView();
                  } else if (constraints.maxWidth > 600) {
                    return const TabletView();
                  } else {
                    return const MobileView();
                  }
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ScrollPositionIndicatorFAB(
              scrollController: scrollController,
            ),
          ),
        ],
      ),
    );
  }
}
