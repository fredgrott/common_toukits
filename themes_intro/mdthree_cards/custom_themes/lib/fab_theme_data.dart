// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/custom_themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final FloatingActionButtonThemeData appLightFABThemeData =
    FloatingActionButtonThemeData(
      foregroundColor: appLightColorScheme.surface,
      backgroundColor: appLightColorScheme.primaryContainer,
      focusColor: appLightColorScheme.onPrimaryContainer.withOpacity(focusStateOpacity),
      hoverColor: appLightColorScheme.onPrimaryContainer.withOpacity(hoverStateOpacity),
      splashColor: appLightColorScheme.onPrimary,
      elevation: 6,
      focusElevation: 1,
      hoverElevation: 3,
      disabledElevation: 1,
      highlightElevation: 1,
      enableFeedback: true,
      iconSize: 24,
      sizeConstraints: const BoxConstraints(
        minHeight: 56,
        minWidth: 56,
      ),
      smallSizeConstraints: const BoxConstraints(
        minHeight: 40,
        minWidth: 40,
      ),
      largeSizeConstraints: const BoxConstraints(
        minHeight: 96,
        minWidth: 96,
      ),
      extendedSizeConstraints: const BoxConstraints(
        minHeight: 56,
        minWidth: 80,
      ),
      extendedIconLabelSpacing: 12,
      extendedPadding: const EdgeInsets.only(
        right: 16,
        bottom: 16,
      ),
      extendedTextStyle: appLightFABExtTextStyle,
      
      

    );

final TextStyle appLightFABExtTextStyle = TextStyle(
  color: appLightColorScheme.onPrimaryContainer,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);


final FloatingActionButtonThemeData appDarkFABThemeData =
    FloatingActionButtonThemeData(
      foregroundColor: appDarkColorScheme.surface,
      backgroundColor: appDarkColorScheme.primaryContainer,
      focusColor: appDarkColorScheme.onPrimaryContainer.withOpacity(focusStateOpacity),
      hoverColor: appDarkColorScheme.onPrimaryContainer.withOpacity(hoverStateOpacity),
      splashColor: appDarkColorScheme.onPrimary,
      elevation: 6,
      focusElevation: 1,
      hoverElevation: 3,
      disabledElevation: 1,
      highlightElevation: 1,
      enableFeedback: true,
      iconSize: 24,
      sizeConstraints: const BoxConstraints(
        minHeight: 56,
        minWidth: 56,
      ),
      smallSizeConstraints: const BoxConstraints(
        minHeight: 40,
        minWidth: 40,
      ),
      largeSizeConstraints: const BoxConstraints(
        minHeight: 96,
        minWidth: 96,
      ),
      extendedSizeConstraints: const BoxConstraints(
        minHeight: 56,
        minWidth: 80,
      ),
      extendedIconLabelSpacing: 12,
      extendedPadding: const EdgeInsets.only(
        right: 16,
        bottom: 16,
      ),
      extendedTextStyle: appDarkFABExtTextStyle,

    );

final TextStyle appDarkFABExtTextStyle = TextStyle(
  color: appDarkColorScheme.onPrimaryContainer,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
