import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/all_projects.dart';
import 'package:flutter_portfolio/widgets/gradient_text.dart';
import 'package:get/get.dart';

import '../../localization/text_keys.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GradientTextWidget(
          size: MediaQuery.of(context).size,
          text1: TextKeys.myRecentProject.tr,
        ),
        AllProjects(
          size: MediaQuery.of(context).size,
        ),
      ],
    );
  }
}
