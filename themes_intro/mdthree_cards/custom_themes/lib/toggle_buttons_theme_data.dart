// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';

import 'package:flutter/material.dart';

final ToggleButtonsThemeData appLightToggleButtonsThemeData =
    ToggleButtonsThemeData(
  disabledBorderColor: appLightColorScheme.onSurface.withOpacity(0.12),
  //MD3 not in spec table but selected is Secondary os this a best guess
  disabledColor: appLightColorScheme.onSecondary,
  selectedColor: appLightColorScheme.secondary,
  selectedBorderColor: appLightColorScheme.outline,
  color: appLightColorScheme.onSurface,
  fillColor: appLightColorScheme.onSecondary,
  // To Match MD3 I am doing a custom widget with MaterialState Mixins which
  // will further adjust this value if selected
  focusColor: appLightColorScheme.onSurface.withOpacity(focusStateOpacity),
  highlightColor:
      appLightColorScheme.onSecondary.withOpacity(pressedStateOpacity),
  hoverColor: appLightColorScheme.onSecondary.withOpacity(hoverStateOpacity),
  splashColor: appLightColorScheme.primary,
  borderColor: appLightColorScheme.outline,
  borderWidth: 1,
  borderRadius: const BorderRadius.all(Radius.circular(12)),
  constraints: const BoxConstraints(
    maxHeight: 40,
    minHeight: 40,
  ),
);

final ToggleButtonsThemeData appDarkToggleButtonsThemeData =
    ToggleButtonsThemeData(
  disabledBorderColor: appDarkColorScheme.onSurface.withOpacity(0.12),
  //MD3 not in spec table but selected is Secondary os this a best guess
  disabledColor: appDarkColorScheme.onSecondary,
  selectedColor: appDarkColorScheme.secondary,
  selectedBorderColor: appDarkColorScheme.outline,
  color: appDarkColorScheme.onSurface,
  fillColor: appDarkColorScheme.onSecondary,
  // To Match MD3 I am doing a custom widget with MaterialState Mixins which
  // will further adjust this value if selected
  focusColor: appDarkColorScheme.onSurface.withOpacity(focusStateOpacity),
  highlightColor:
      appDarkColorScheme.onSecondary.withOpacity(pressedStateOpacity),
  hoverColor: appDarkColorScheme.onSecondary.withOpacity(hoverStateOpacity),
  splashColor: appDarkColorScheme.primary,
  borderColor: appDarkColorScheme.outline,
  borderWidth: 1,
  borderRadius: const BorderRadius.all(Radius.circular(12)),
  constraints: const BoxConstraints(
    maxHeight: 40,
    minHeight: 40,
  ),
);
