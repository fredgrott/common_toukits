// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: prefer-correct-identifier-length
final ButtonStyle appLightFilledButtonTertiaryButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightFilledButtonTertiaryTextStyle.copyWith(
        color: appLightColorScheme.onSurface.withOpacity(0.38),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightFilledButtonTertiaryTextStyle.copyWith(
        color: appLightColorScheme.onTertiary,
      );
    }

    if (states.contains(MaterialState.focused)) {
      return appLightFilledButtonTertiaryTextStyle.copyWith(
        color: appLightColorScheme.onTertiary,
      );
    }

    if (states.contains(MaterialState.pressed)) {
      return appLightFilledButtonTertiaryTextStyle.copyWith(
        color: appLightColorScheme.onTertiary,
      );
    }

    return appLightFilledButtonTertiaryTextStyle.copyWith(
      color: appLightColorScheme.onTertiary,
    );
  }),
  backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightColorScheme.onSurface.withOpacity(0.12);
    }

    return appLightColorScheme.tertiary;
  }),
  // for icons
  foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightColorScheme.onSurface.withOpacity(0.38);
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightColorScheme.onTertiary;
    }
    if (states.contains(MaterialState.focused)) {
      return appLightColorScheme.onTertiary;
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightColorScheme.onTertiary;
    }

    return appLightColorScheme.onTertiary;
  }),
  overlayColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.hovered)) {
      return appLightColorScheme.onTertiary.withOpacity(hoverStateOpacity);
    }
    if (states.contains(MaterialState.focused)) {
      return appLightColorScheme.onPrimary.withOpacity(focusStateOpacity);
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightColorScheme.onTertiary.withOpacity(pressedStateOpacity);
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
      return 1;
    }

    return 0;
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
  shape: MaterialStateProperty.all<OutlinedBorder?>(const BeveledRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),),

  side: MaterialStateProperty.all<BorderSide?>(BorderSide.none),

  alignment: Alignment.center,

);

final TextStyle appLightFilledButtonTertiaryTextStyle = TextStyle(
  color: appLightColorScheme.onTertiary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);

// ignore: prefer-correct-identifier-length
final ButtonStyle appDarkFilledButtonTertiaryButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkFilledButtonTertiaryTextStyle.copyWith(
        color: appDarkColorScheme.onSurface.withOpacity(0.38),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkFilledButtonTertiaryTextStyle.copyWith(
        color: appDarkColorScheme.onTertiary,
      );
    }

    if (states.contains(MaterialState.focused)) {
      return appDarkFilledButtonTertiaryTextStyle.copyWith(
        color: appDarkColorScheme.onTertiary,
      );
    }

    if (states.contains(MaterialState.pressed)) {
      return appDarkFilledButtonTertiaryTextStyle.copyWith(
        color: appDarkColorScheme.onTertiary,
      );
    }

    return appLightFilledButtonTertiaryTextStyle.copyWith(
      color: appDarkColorScheme.onTertiary,
    );
  }),
  backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkColorScheme.onSurface.withOpacity(0.12);
    }

    return appDarkColorScheme.tertiary;
  }),
  // for icons
  foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkColorScheme.onSurface.withOpacity(0.38);
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkColorScheme.onTertiary;
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkColorScheme.onTertiary;
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkColorScheme.onTertiary;
    }

    return appDarkColorScheme.onTertiary;
  }),
  overlayColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.hovered)) {
      return appDarkColorScheme.onTertiary.withOpacity(hoverStateOpacity);
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkColorScheme.onPrimary.withOpacity(focusStateOpacity);
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkColorScheme.onTertiary.withOpacity(pressedStateOpacity);
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
      return 1;
    }

    return 0;
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
  shape:
      MaterialStateProperty.all<OutlinedBorder?>(const BeveledRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),),

  side: MaterialStateProperty.all<BorderSide?>(BorderSide.none),

  alignment: Alignment.center,
);


final TextStyle appDarkFilledButtonTertiaryTextStyle = TextStyle(
  color: appLightColorScheme.onTertiary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
