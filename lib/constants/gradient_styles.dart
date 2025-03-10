import 'package:flutter/cupertino.dart';

import 'colors.dart';

class Styles {
  static const BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors:<Color> [
       AppColors.ebony,
        AppColors.valhalla,
      ],
    ),
  );

  static const BoxDecoration drawerDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: <Color>[
        AppColors.studio,
        AppColors.ebony,
      ],
    ),
  );
}
