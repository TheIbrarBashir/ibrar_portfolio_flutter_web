import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_portfolio/constants/colors.dart';
import 'package:flutter_portfolio/constants/const.dart';
import 'package:flutter_portfolio/constants/styles.dart';
import 'package:flutter_portfolio/widgets/gradient_text.dart';
import 'package:get/get.dart';

import '../../localization/text_keys.dart';

class ContactMeSection extends StatefulWidget {
  final Size size;

  const ContactMeSection({
    super.key,
    required this.size,
  });

  @override
  State<ContactMeSection> createState() => _ContactMeSectionState();
}

class _ContactMeSectionState extends State<ContactMeSection> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var firstNameTC = TextEditingController();
  var lastNameTC = TextEditingController();
  var emailTC = TextEditingController();
  var phoneTC = TextEditingController();
  var messageTC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: AppColors.ebony,
        ),
        width: width(),
        padding: EdgeInsets.symmetric(
          horizontal: width() > 600 ? width() * 0.12 : width() * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            verticalSpace(0.05),
            GradientTextWidget(
              size: widget.size,
              text1: TextKeys.callToAction.tr,
            ),
            Text(
              TextKeys.callToActionDetail.tr,
              style: TextStyles.style16regular,
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                horizontalSpaceMedium(),
                Text(
                  "waqarbashir462@gmail.com",
                  style: TextStyles.style24extrabold,
                ),
                horizontalSpaceMedium(),
                InkWell(
                  onTap: () {
                    Clipboard.setData(
                      const ClipboardData(
                        text: "waqarbashir462@gmail.com",
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/icons/copy.svg",
                    colorFilter: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpaceMedium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/call.svg",
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                horizontalSpaceMedium(),
                Text(
                  "+(92) 304 0733783",
                  style: TextStyles.style24extrabold,
                ),
                horizontalSpaceMedium(),
                InkWell(
                  onTap: () {
                    Clipboard.setData(
                      const ClipboardData(
                        text: "+(92) 304 0733783",
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/icons/copy.svg",
                    colorFilter: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(0.1),
            Text(
              TextKeys.copyRights.tr,
              style: TextStyles.style16regular,
              textAlign: TextAlign.center,
            ),
            verticalSpace(0.02),
          ],
        ));
  }
}
