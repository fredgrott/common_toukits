// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_shadows.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final AppBarTheme appLightAppBarTheme = AppBarTheme(
  
  backgroundColor: appLightColorScheme.surface,
  elevation: 0,
  shadowColor: appLightColorScheme.shadow,
  iconTheme: appLightAppBarIconThemeData,
  actionsIconTheme: appLightAppBarActionsIconThemeData,
  titleSpacing: 4,
  toolbarTextStyle: appLightAppBarToolbarTextStyle,
  titleTextStyle: appLightAppBarTitleTextStyle,
);

final IconThemeData appLightAppBarIconThemeData = IconThemeData(
  color: appLightColorScheme.onSurface,
  size: 24,
  shadows: iconLightShadows,

);

// ignore: prefer-correct-identifier-length
final IconThemeData appLightAppBarActionsIconThemeData = IconThemeData(
  color: appLightColorScheme.onSurfaceVariant,
  size: 24,
  shadows: iconLightShadows,

);



final TextStyle appLightAppBarToolbarTextStyle = TextStyle(
  color: appLightColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 32.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.25,
);

final TextStyle appLightAppBarTitleTextStyle = TextStyle(
  color: appLightColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 32.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.25,
);

final AppBarTheme appDarkAppBarTheme = AppBarTheme(
  
  backgroundColor: appDarkColorScheme.surface,
  elevation: 0,
  shadowColor: appDarkColorScheme.shadow,
  iconTheme: appLightAppBarIconThemeData,
  actionsIconTheme: appLightAppBarActionsIconThemeData,
  titleSpacing: 4,
  toolbarTextStyle: appLightAppBarToolbarTextStyle,
  titleTextStyle: appLightAppBarTitleTextStyle,
);

final IconThemeData appDarkAppBarIconThemeData = IconThemeData(
  color: appDarkColorScheme.onSurface,
  size: 24,
  shadows: iconDarkShadows,

);

// ignore: prefer-correct-identifier-length
final IconThemeData appDarkAppBarActionsIconThemeData = IconThemeData(
  color: appDarkColorScheme.onSurfaceVariant,
  size: 24,
  shadows: iconDarkShadows,

);

final TextStyle appDarkAppBarToolbarTextStyle = TextStyle(
  color: appDarkColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 32.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.25,
);

final TextStyle appDarkAppBarTitleTextStyle = TextStyle(
  color: appLightColorScheme.onSurface,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 32.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.0,
  height: 1.25,
);
