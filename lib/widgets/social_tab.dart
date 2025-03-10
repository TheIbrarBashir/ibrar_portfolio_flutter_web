import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/const.dart';
import 'package:flutter_portfolio/widgets/download_cv_widget.dart';
import 'package:flutter_portfolio/widgets/social_widget.dart';

class SocialTab extends StatelessWidget {
  const SocialTab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DownloadCVButton(),
          SizedBox(
            height: 20,
          ),
          SocialWidget(),
        ],
      ),
    );
  }
}

class SocialLarge extends StatelessWidget {
  const SocialLarge({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width() * 0.37,
      child: const Row(
        children: [
          DownloadCVButton(),
          SizedBox(
            width: 20,
          ),
          SocialWidget()
        ],
      ),
    );
  }
}
