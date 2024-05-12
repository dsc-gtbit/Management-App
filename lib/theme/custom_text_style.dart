import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get calibri {
    return copyWith(
      fontFamily: 'Calibri',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallGray90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90001,
      );
// Title text style
  static get titleLargeGray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
      );
}
