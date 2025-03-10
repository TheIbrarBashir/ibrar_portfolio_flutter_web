import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_portfolio/constants/colors.dart';
import 'package:flutter_portfolio/constants/styles.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../localization/text_keys.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        const url =
            '';
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.paleSlate)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              TextKeys.downloadCV.tr,
              style: TextStyles.style16regular,
            ),
            const SizedBox.square(
              dimension: 12,
            ),
            const FaIcon(
              FontAwesomeIcons.download,
              color: AppColors.paleSlate,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
