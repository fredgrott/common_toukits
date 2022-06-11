// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ButtonStyle appLightFilledTonalButtonSytle = ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightFilledTonalButtonTextStyle.copyWith(
        color: appLightColorScheme.onSurface.withOpacity(0.38),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightFilledTonalButtonTextStyle.copyWith(
        color: appLightColorScheme.onSecondaryContainer,
      );
    }
    if (states.contains(MaterialState.focused)) {
      return appLightFilledTonalButtonTextStyle.copyWith(
        color: appLightColorScheme.onSecondaryContainer,
      );
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightFilledTonalButtonTextStyle.copyWith(
        color: appLightColorScheme.onSecondaryContainer,
      );
    }

    return appLightFilledTonalButtonTextStyle.copyWith(
      color: appLightColorScheme.onSecondaryContainer,
    );
  }),
  backgroundColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightColorScheme.onSurface.withOpacity(0.12);
    }

    return appLightColorScheme.secondaryContainer;
  }),
  // for icons
  foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightColorScheme.onSurface.withOpacity(0.38);
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightColorScheme.onSecondary;
    }
    if (states.contains(MaterialState.focused)) {
      return appLightColorScheme.onSecondary;
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightColorScheme.onSecondary;
    }

    return appLightColorScheme.onSecondary;
  }),
  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.transparent;
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightColorScheme.onSecondaryContainer
          .withOpacity(hoverStateOpacity);
    }
    if (states.contains(MaterialState.focused)) {
      return appLightColorScheme.onSecondaryContainer
          .withOpacity(focusStateOpacity);
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightColorScheme.onSecondaryContainer
          .withOpacity(pressedStateOpacity);
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

  side: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return BorderSide(
        color: appLightColorScheme.onSecondary.withOpacity(0.12),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return BorderSide(
        color: appLightColorScheme.outline,
      );
    }
    if (states.contains(MaterialState.focused)) {
      return BorderSide(
        color: appLightColorScheme.onSecondary,
      );
    }
    if (states.contains(MaterialState.pressed)) {
      return BorderSide(
        color: appLightColorScheme.onSecondary,
      );
    }

    return BorderSide(
      color: appLightColorScheme.outline,
    );
  }),

  alignment: Alignment.center,
);

// ignore: prefer-correct-identifier-length
final TextStyle appLightFilledTonalButtonTextStyle = TextStyle(
  color: appLightColorScheme.onSecondaryContainer,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);


final ButtonStyle appDarkFilledTonalButtonSytle = ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkFilledTonalButtonTextStyle.copyWith(
        color: appDarkColorScheme.onSurface.withOpacity(0.38),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkFilledTonalButtonTextStyle.copyWith(
        color: appDarkColorScheme.onSecondaryContainer,
      );
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkFilledTonalButtonTextStyle.copyWith(
        color: appDarkColorScheme.onSecondaryContainer,
      );
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkFilledTonalButtonTextStyle.copyWith(
        color: appDarkColorScheme.onSecondaryContainer,
      );
    }

    return appDarkFilledTonalButtonTextStyle.copyWith(
      color: appDarkColorScheme.onSecondaryContainer,
    );
  }),
  backgroundColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkColorScheme.onSurface.withOpacity(0.12);
    }

    return appDarkColorScheme.secondaryContainer;
  }),
  // for icons
  foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkColorScheme.onSurface.withOpacity(0.38);
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkColorScheme.onSecondary;
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkColorScheme.onSecondary;
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkColorScheme.onSecondary;
    }

    return appDarkColorScheme.onSecondary;
  }),
  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.transparent;
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkColorScheme.onSecondaryContainer
          .withOpacity(hoverStateOpacity);
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkColorScheme.onSecondaryContainer
          .withOpacity(focusStateOpacity);
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkColorScheme.onSecondaryContainer
          .withOpacity(pressedStateOpacity);
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

  side: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return BorderSide(
        color: appDarkColorScheme.onSecondary.withOpacity(0.12),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return BorderSide(
        color: appDarkColorScheme.outline,
      );
    }
    if (states.contains(MaterialState.focused)) {
      return BorderSide(
        color: appDarkColorScheme.onSecondary,
      );
    }
    if (states.contains(MaterialState.pressed)) {
      return BorderSide(
        color: appDarkColorScheme.onSecondary,
      );
    }

    return BorderSide(
      color: appDarkColorScheme.outline,
    );
  }),

  alignment: Alignment.center,
);

// ignore: prefer-correct-identifier-length
final TextStyle appDarkFilledTonalButtonTextStyle = TextStyle(
  color: appDarkColorScheme.onSecondaryContainer,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
