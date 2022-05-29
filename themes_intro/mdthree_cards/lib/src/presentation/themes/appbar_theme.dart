// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values, use_named_constants

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdthree_cards/src/presentation/themes/app_brand_colors.dart';
import 'package:mdthree_cards/src/presentation/themes/app_colors.dart';

AppBarTheme appLightAppbarTheme = AppBarTheme(
  color: appLightColorScheme.surface,
  surfaceTintColor: appLightColorScheme.surfaceTint,
  backgroundColor: appLightColorScheme.surface,
  foregroundColor: appLightColorScheme.onSurface,
  elevation: 0,
  scrolledUnderElevation: 3,
  shadowColor: appLightColorScheme.shadow,
  shape: RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(0)),
    side: BorderSide(
      color: appLightColorScheme.outline,
    ),
  ),
  iconTheme:  appLightAppBarIconThemeData,
  actionsIconTheme: appLightAppBarActionsIconThemeData,
  centerTitle: false,
  titleSpacing: 16,
  toolbarTextStyle: appLightToolbarTextStyle,
  titleTextStyle: appLightTitleTextStyle,
 

);

IconThemeData appLightAppBarIconThemeData = IconThemeData(
  color: appLightColorScheme.onSurface,
  size: 24,
  shadows: [
    Shadow(
      color: brandTwoLightPrimary,
      blurRadius: 4,
    ),
    Shadow(
      color: brandThreeLightPrimary,
      blurRadius: 4,
    )
  ],
);

IconThemeData appLightAppBarActionsIconThemeData = IconThemeData(
  color: appLightColorScheme.onSurface,
  size: 24,
  shadows: [
    Shadow(
      color: brandTwoLightPrimary,
      blurRadius: 4,
    ),
    Shadow(
      color: brandThreeLightPrimary,
      blurRadius: 4,
    )
  ],
);

TextStyle appLightToolbarTextStyle = TextStyle(
  color: appLightColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 28.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.29,

);

TextStyle appLightTitleTextStyle = TextStyle(
  color: appLightColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 28.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.29,
);

AppBarTheme appDarkAppbarTheme = AppBarTheme(
  color: appDarkColorScheme.surface,
  surfaceTintColor: appDarkColorScheme.surfaceTint,
  backgroundColor: appDarkColorScheme.surface,
  foregroundColor: appDarkColorScheme.onSurface,
  elevation: 0,
  scrolledUnderElevation: 3,
  shadowColor: appDarkColorScheme.shadow,
  shape: RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(0)),
    side: BorderSide(
      color: appDarkColorScheme.outline,
    ),
  ),
  iconTheme: appDarkAppBarIconThemeData,
  actionsIconTheme: appDarkAppBarActionsIconThemeData,
  centerTitle: false,
  titleSpacing: 16,
  toolbarTextStyle: appDarkToolbarTextStyle,
  titleTextStyle: appDarkTitleTextStyle,
);






IconThemeData appDarkAppBarIconThemeData = IconThemeData(
  color: appDarkColorScheme.onSurface,
  size: 24,
  shadows: [
    Shadow(
      color: brandTwoDarkPrimary,
      blurRadius: 4,
    ),
    Shadow(
      color: brandThreeDarkPrimary,
      blurRadius: 4,
    )
  ],
);

IconThemeData appDarkAppBarActionsIconThemeData = IconThemeData(
  color: appDarkColorScheme.onSurface,
  size: 24,
  shadows: [
    Shadow(
      color: brandTwoDarkPrimary,
      blurRadius: 4,
    ),
    Shadow(
      color: brandThreeDarkPrimary,
      blurRadius: 4,
    )
  ],
);

TextStyle appDarkToolbarTextStyle = TextStyle(
  color: appDarkColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 28.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.29,
);

TextStyle appDarkTitleTextStyle = TextStyle(
  color: appDarkColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 28.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.29,
);
