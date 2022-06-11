// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Gist: We do not have a pre-defiend theme way to modify icon color in test buttons per
//       MaterialState so we have to creat our own predefined Texy Buttons and grab
//       the MaterialState and modify the icon color via a IconTheme.of references.

final TextButtonThemeData appLightTextButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return appLightTextButtonTextStyle.copyWith(
          color: appLightColorScheme.onSurface.withOpacity(0.38),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return appLightTextButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }

      if (states.contains(MaterialState.focused)) {
        return appLightTextButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }

      if (states.contains(MaterialState.pressed)) {
        return appLightTextButtonTextStyle.copyWith(
          color: appLightColorScheme.primary,
        );
      }

      return appLightTextButtonTextStyle.copyWith(
        color: appLightColorScheme.primary,
      );
    }),
    backgroundColor: MaterialStateProperty.all<Color?>(Colors.transparent),
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
    overlayColor: MaterialStateProperty.resolveWith((states) {
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

final TextStyle appLightTextButtonTextStyle = TextStyle(
  color: appLightColorScheme.primary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);

final TextButtonThemeData appDarkTextButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return appDarkTextButtonTextStyle.copyWith(
          color: appDarkColorScheme.onSurface.withOpacity(0.38),
        );
      }
      if (states.contains(MaterialState.hovered)) {
        return appDarkTextButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }

      if (states.contains(MaterialState.focused)) {
        return appDarkTextButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }

      if (states.contains(MaterialState.pressed)) {
        return appDarkTextButtonTextStyle.copyWith(
          color: appDarkColorScheme.primary,
        );
      }

      return appDarkTextButtonTextStyle.copyWith(
        color: appDarkColorScheme.primary,
      );
    }),
    backgroundColor: MaterialStateProperty.all<Color?>(Colors.transparent),
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
    overlayColor: MaterialStateProperty.resolveWith((states) {
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

final TextStyle appDarkTextButtonTextStyle = TextStyle(
  color: appDarkColorScheme.primary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
