import 'package:flutter/material.dart';
import 'package:saicharan_s_application1/core/app_export.dart';

class AppDecoration {

  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700.withOpacity(0.1),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}



double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

