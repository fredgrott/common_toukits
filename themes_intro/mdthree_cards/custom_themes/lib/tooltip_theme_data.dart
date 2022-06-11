// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TooltipThemeData appLightTooltipThemeData = TooltipThemeData(
  height: 25,
  padding: const EdgeInsets.all(6),
  margin: const EdgeInsets.all(4),
  verticalOffset: 20,
  preferBelow: false,
  triggerMode: TooltipTriggerMode.longPress,
  waitDuration: const Duration(seconds: 2),
  showDuration: const Duration(seconds: 3),
  textStyle: tooltipLightTextStyle,
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    gradient: LinearGradient(
      colors: [
        appLightColorScheme.primary.withOpacity(0.25),
        appLightColorScheme.primaryContainer.withOpacity(0.25),
      ],
    ),
  ),



);

final TextStyle tooltipLightTextStyle = TextStyle(
  
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 11.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.5,
  height: 1.45,
  color: appLightColorScheme.onInverseSurface,
);

final TooltipThemeData appDarkTooltipThemeData = TooltipThemeData(
  height: 25,
  padding: const EdgeInsets.all(6),
  margin: const EdgeInsets.all(4),
  verticalOffset: 20,
  preferBelow: false,
  triggerMode: TooltipTriggerMode.longPress,
  waitDuration: const Duration(seconds: 2),
  showDuration: const Duration(seconds: 3),
  textStyle: tooltipDarkTextStyle,
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    gradient: LinearGradient(
      colors: [
        appDarkColorScheme.primary.withOpacity(0.25),
        appDarkColorScheme.primaryContainer.withOpacity(0.25),
      ],
    ),
  ),
);


final TextStyle tooltipDarkTextStyle = TextStyle(
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 11.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.5,
  height: 1.45,
  color: appLightColorScheme.onInverseSurface,
);
