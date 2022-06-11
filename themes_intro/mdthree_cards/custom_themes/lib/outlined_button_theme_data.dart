// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Gist: We do not have a pre-defiend theme way to modify icon color in outlined buttons per
//       MaterialState so we have to creat our own predefined Outlined Buttons and grab
//       the MaterialState and modify the icon color via a IconTheme.of references.

// ignore: prefer-correct-identifier-length
final OutlinedButtonThemeData appLightOutlinedButtonThemeData =
    OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appLightOutlinedButtonTextStyle.copyWith(
          color: appLightColorScheme.onSurface.withOpacity(0.38),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return appLightOutlinedButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return appLightOutlinedButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return appLightOutlinedButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }

      return appLightOutlinedButtonTextStyle.copyWith(
        color: appLightColorScheme.primary,
      );
    }),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appLightColorScheme.surface;
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
      if (states.contains(MaterialState.hovered)) {
        return appLightColorScheme.primary.withOpacity(hoverStateOpacity);
      }
      if (states.contains(MaterialState.focused)) {
        return appLightColorScheme.primary.withOpacity(focusStateOpacity);
      }
      if (states.contains(MaterialState.pressed)) {
        return appLightColorScheme.primary.withOpacity(pressedStateOpacity);
      }

      return Colors.transparent;
    }),
    shadowColor: MaterialStateProperty.all<Color?>(appLightColorScheme.shadow),
    surfaceTintColor:
        MaterialStateProperty.all<Color?>(appLightColorScheme.surfaceTint),
    elevation: MaterialStateProperty.all<double?>(0),
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

    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return BorderSide(
          color: appLightColorScheme.onSurface.withOpacity(0.12),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return BorderSide(
          color: appLightColorScheme.outline,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return BorderSide(
          color: appLightColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return BorderSide(
          color: appLightColorScheme.outline,
        );
      }

      return BorderSide(
        color: appLightColorScheme.outline,
      );
    }),
    shape: MaterialStateProperty.all<OutlinedBorder?>(
      StadiumBorder(),
    ),
    alignment: Alignment.center,
  ),
);

// ignore: prefer-correct-identifier-length
final TextStyle appLightOutlinedButtonTextStyle = TextStyle(
  color: appLightColorScheme.primary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);

final OutlinedButtonThemeData appDarkOutlinedButtonThemeData =
    OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appDarkOutlinedButtonTextStyle.copyWith(
          color: appDarkColorScheme.onSurface.withOpacity(0.38),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return appDarkOutlinedButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return appDarkOutlinedButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return appDarkOutlinedButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }

      return appDarkOutlinedButtonTextStyle.copyWith(
        color: appDarkColorScheme.primary,
      );
    }),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return appDarkColorScheme.surface;
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
      if (states.contains(MaterialState.hovered)) {
        return appDarkColorScheme.primary.withOpacity(hoverStateOpacity);
      }
      if (states.contains(MaterialState.focused)) {
        return appDarkColorScheme.primary.withOpacity(focusStateOpacity);
      }
      if (states.contains(MaterialState.pressed)) {
        return appDarkColorScheme.primary.withOpacity(pressedStateOpacity);
      }

      return Colors.transparent;
    }),
    shadowColor: MaterialStateProperty.all<Color?>(appDarkColorScheme.shadow),
    surfaceTintColor:
        MaterialStateProperty.all<Color?>(appDarkColorScheme.surfaceTint),
    elevation: MaterialStateProperty.all<double?>(0),
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

    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return BorderSide(
          color: appDarkColorScheme.onSurface.withOpacity(0.12),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return BorderSide(
          color: appDarkColorScheme.outline,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return BorderSide(
          color: appDarkColorScheme.primary,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return BorderSide(
          color: appDarkColorScheme.outline,
        );
      }

      return BorderSide(
        color: appDarkColorScheme.outline,
      );
    }),
    shape: MaterialStateProperty.all<OutlinedBorder?>(
      StadiumBorder(),
    ),
    alignment: Alignment.center,
  ),
);

final TextStyle appDarkOutlinedButtonTextStyle = TextStyle(
  color: appDarkColorScheme.primary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
