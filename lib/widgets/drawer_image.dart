import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_assets.dart';
import 'package:flutter_portfolio/constants/colors.dart';

class DrawerImage extends StatelessWidget {
  final double height, width;

  const DrawerImage({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(4),
      decoration:const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors:<Color> [
            AppColors. studio,
            Color(0xFF6a5ae4),
          ],
        ),
      ),
      child: ClipOval(
        child: Transform.rotate(
          angle: 0.1,
          child: Image.asset(
            AppImages.profile,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
