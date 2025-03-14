import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_assets.dart';
import 'package:flutter_portfolio/constants/colors.dart';

import 'dart:math' as math;

import 'package:flutter_portfolio/constants/const.dart';

class RotatingImageContainer extends StatefulWidget {
  const RotatingImageContainer({super.key});

  @override
  State<RotatingImageContainer> createState() => _RotatingImageContainerState();
}

class _RotatingImageContainerState extends State<RotatingImageContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateZ(isHovered ? 0 : math.pi / 36),
        alignment: Alignment.center,
        height: width() > 950 ? width() * 0.18 : width() * 0.3,
        width: width() > 950 ? width() * 0.18: width() * 0.3,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.profile),
          ),
          border: Border.all(
              color: isHovered ? AppColors.studio : AppColors.valhalla,
              width: 1.2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
