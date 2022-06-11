// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: prefer-correct-identifier-length
final ElevatedButtonThemeData appLightElevatedButtonThemeData =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appLightElevatedButtonTextStyle.copyWith(
          color: appLightColorScheme.onSurface.withOpacity(0.38),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return appLightElevatedButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return appLightElevatedButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return appLightElevatedButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }

      return appLightElevatedButtonTextStyle.copyWith(
        color: appLightColorScheme.primary,
      );
    }),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appLightColorScheme.onSurface.withOpacity(0.12);
      }
      if (states.contains(MaterialState.hovered)) {
        return appLightColorScheme.surface;
      }
      if (states.contains(MaterialState.focused)) {
        return appLightColorScheme.surface;
      }
      if (states.contains(MaterialState.pressed)) {
        return appLightColorScheme.surface;
      }

      return appLightColorScheme.surface;
    }),
    // for icons
    foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appLightColorScheme.onSurface.withOpacity(0.38);
      }
      if (states.contains(MaterialState.hovered)) {
        return appLightColorScheme.primary;
      }
      if (states.contains(MaterialState.focused)) {
        return appLightColorScheme.primary;
      }
      if (states.contains(MaterialState.pressed)) {
        return appLightColorScheme.primary;
      }

      return appLightColorScheme.primary;
    }),
    overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      }

      if (states.contains(MaterialState.hovered)) {
        return appLightColorScheme.primary.withOpacity(hoverStateOpacity);
      }

      if (states.contains(MaterialState.focused)) {
        return appLightColorScheme.primary.withOpacity(focusStateOpacity);
      }

      if (states.contains(MaterialState.pressed)) {
        return appLightColorScheme.primary.withOpacity(focusStateOpacity);
      }

      return Colors.transparent;
    }),
    shadowColor: MaterialStateProperty.all<Color?>(appLightColorScheme.shadow),
    surfaceTintColor:
        MaterialStateProperty.all<Color?>(appLightColorScheme.surfaceTint),
    elevation: MaterialStateProperty.resolveWith<double?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return 0;
      }
      if (states.contains(MaterialState.hovered)) {
        return 3;
      }
      if (states.contains(MaterialState.focused)) {
        return 1;
      }
      if (states.contains(MaterialState.pressed)) {
        return 1;
      }

      return 1.0;
    }),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
      const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
    ),
    minimumSize: MaterialStateProperty.all<Size?>(
      const Size(
        48,
        40,
      ),
    ),
    
    
    side: MaterialStateProperty.all<BorderSide?>(BorderSide.none),
    shape: MaterialStateProperty.all<OutlinedBorder?>(
      StadiumBorder(
        side: BorderSide(
          color: appLightColorScheme.outline,
          width: 0,
        ),
      ),
    ),
    alignment: Alignment.center,
  ),
);

// ignore: prefer-correct-identifier-length
final TextStyle appLightElevatedButtonTextStyle = TextStyle(
  color: appLightColorScheme.primary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);

// ignore: prefer-correct-identifier-length
final ElevatedButtonThemeData appDarkElevatedButtonThemeData =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appDarkElevatedButtonTextStyle.copyWith(
          color: appDarkColorScheme.onSurface.withOpacity(0.38),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return appDarkElevatedButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return appDarkElevatedButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return appDarkElevatedButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }

      return appDarkElevatedButtonTextStyle.copyWith(
        color: appDarkColorScheme.primary,
      );
    }),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appDarkColorScheme.onSurface;
      }
      if (states.contains(MaterialState.hovered)) {
        return appDarkColorScheme.surface;
      }
      if (states.contains(MaterialState.focused)) {
        return appDarkColorScheme.surface;
      }
      if (states.contains(MaterialState.pressed)) {
        return appDarkColorScheme.surface;
      }

      return appDarkColorScheme.surface;
    }),
    // for icons
    foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appDarkColorScheme.onSurface.withOpacity(0.38);
      }
      if (states.contains(MaterialState.hovered)) {
        return appDarkColorScheme.primary;
      }
      if (states.contains(MaterialState.focused)) {
        return appDarkColorScheme.primary;
      }
      if (states.contains(MaterialState.pressed)) {
        return appDarkColorScheme.primary;
      }

      return appDarkColorScheme.primary;
    }),
    overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      }

      if (states.contains(MaterialState.hovered)) {
        return appLightColorScheme.primary.withOpacity(hoverStateOpacity);
      }

      if (states.contains(MaterialState.focused)) {
        return appLightColorScheme.primary.withOpacity(focusStateOpacity);
      }

      if (states.contains(MaterialState.pressed)) {
        return appLightColorScheme.primary.withOpacity(focusStateOpacity);
      }

      return Colors.transparent;
    }),
    shadowColor: MaterialStateProperty.all<Color?>(appDarkColorScheme.shadow),
    surfaceTintColor:
        MaterialStateProperty.all<Color?>(appDarkColorScheme.surfaceTint),
    elevation: MaterialStateProperty.resolveWith<double?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return 0;
      }
      if (states.contains(MaterialState.hovered)) {
        return 3;
      }
      if (states.contains(MaterialState.focused)) {
        return 1;
      }
      if (states.contains(MaterialState.pressed)) {
        return 1;
      }

      return 1.0;
    }),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
      const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
    ),
    minimumSize: MaterialStateProperty.all<Size?>(
      const Size(
        48,
        40,
      ),
    ),
    
    
    side: MaterialStateProperty.all<BorderSide?>(BorderSide.none),
    shape: MaterialStateProperty.all<OutlinedBorder?>(
      StadiumBorder(
        side: BorderSide(
          color: appDarkColorScheme.outline,
        ),
      ),
    ),
    alignment: Alignment.center,
  ),
);

// ignore: prefer-correct-identifier-length
final TextStyle appDarkElevatedButtonTextStyle = TextStyle(
  color: appDarkColorScheme.primary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
