// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ButtonStyle appLightFilledButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightFilledButtonTextStyle.copyWith(
        color: appLightColorScheme.onSurface.withOpacity(0.38),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightFilledButtonTextStyle.copyWith(
        color: appLightColorScheme.onPrimary,
      );
    }

    if (states.contains(MaterialState.focused)) {
      return appLightFilledButtonTextStyle.copyWith(
        color: appLightColorScheme.onPrimary,
      );
    }

    if (states.contains(MaterialState.pressed)) {
      return appLightFilledButtonTextStyle.copyWith(
        color: appLightColorScheme.onPrimary,
      );
    }

    return appLightFilledButtonTextStyle.copyWith(
      color: appLightColorScheme.onPrimary,
    );
  }),
  backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightColorScheme.onSurface.withOpacity(0.12);
    }

    return appLightColorScheme.primary;
  }),
  // for icons
  foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appLightColorScheme.onSurface.withOpacity(0.38);
    }
    if (states.contains(MaterialState.hovered)) {
      return appLightColorScheme.onPrimary;
    }
    if (states.contains(MaterialState.focused)) {
      return appLightColorScheme.onPrimary;
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightColorScheme.onPrimary;
    }

    return appLightColorScheme.onPrimary;
  }),
  overlayColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.hovered)) {
      return appLightColorScheme.onPrimary.withOpacity(hoverStateOpacity);
    }
    if (states.contains(MaterialState.focused)) {
      return appLightColorScheme.onPrimary.withOpacity(focusStateOpacity);
    }
    if (states.contains(MaterialState.pressed)) {
      return appLightColorScheme.onPrimary.withOpacity(pressedStateOpacity);
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

  side: MaterialStateProperty.all<BorderSide?>(BorderSide.none),

  alignment: Alignment.center,
);

final TextStyle appLightFilledButtonTextStyle = TextStyle(
  color: appLightColorScheme.onPrimary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);


final ButtonStyle appDarkFilledButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkFilledButtonTextStyle.copyWith(
        color: appDarkColorScheme.onSurface.withOpacity(0.38),
      );
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkFilledButtonTextStyle.copyWith(
        color: appDarkColorScheme.onPrimary,
      );
    }

    if (states.contains(MaterialState.focused)) {
      return appDarkFilledButtonTextStyle.copyWith(
        color: appDarkColorScheme.onPrimary,
      );
    }

    if (states.contains(MaterialState.pressed)) {
      return appDarkFilledButtonTextStyle.copyWith(
        color: appDarkColorScheme.onPrimary,
      );
    }

    return appLightFilledButtonTextStyle.copyWith(
      color: appDarkColorScheme.onPrimary,
    );
  }),
  backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkColorScheme.onSurface.withOpacity(0.12);
    }

    return appDarkColorScheme.primary;
  }),
  // for icons
  foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
    if (states.contains(MaterialState.disabled)) {
      return appDarkColorScheme.onSurface.withOpacity(0.38);
    }
    if (states.contains(MaterialState.hovered)) {
      return appDarkColorScheme.onPrimary;
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkColorScheme.onPrimary;
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkColorScheme.onPrimary;
    }

    return appDarkColorScheme.onPrimary;
  }),
  overlayColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.hovered)) {
      return appDarkColorScheme.onPrimary.withOpacity(hoverStateOpacity);
    }
    if (states.contains(MaterialState.focused)) {
      return appDarkColorScheme.onPrimary.withOpacity(focusStateOpacity);
    }
    if (states.contains(MaterialState.pressed)) {
      return appDarkColorScheme.onPrimary.withOpacity(pressedStateOpacity);
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

  side: MaterialStateProperty.all<BorderSide?>(BorderSide.none),

  alignment: Alignment.center,
);


final TextStyle appDarkFilledButtonTextStyle = TextStyle(
  color: appDarkColorScheme.onPrimary,
  fontFamily: GoogleFonts.fraunces().fontFamily,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  height: 1.43,
);
