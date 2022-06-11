// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:flutter/material.dart';

final CardTheme appLightCardTheme = CardTheme(
  // in order of performance hit light to heavy
  //     Clip.none
  //     Clip.hardEdge
  //     Clip.antiAlias
  //     Clip.antiAliasWithSave
  clipBehavior: Clip.none,

  // Per MD3 this is surfaceVariant for filled
  color: appLightColorScheme.surface,

  shadowColor: appLightColorScheme.shadow,



  surfaceTintColor: appLightColorScheme.surfaceTint,

  // Per MD3 elevated card is at elevation level 1
  elevation: 0,

  margin: const EdgeInsets.only(
    left: 16,
    right: 16,
  ),

  // leaving whether we do a BorderSide to themedata or widget devlarations
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  ),

);

final CardTheme appDarkCardTheme = CardTheme(
  // in order of performance hit light to heavy
  //     Clip.none
  //     Clip.hardEdge
  //     Clip.antiAlias
  //     Clip.antiAliasWithSave
  clipBehavior: Clip.none,

  // Per MD3 this is surfaceVariant for filled
  color: appDarkColorScheme.surface,

  shadowColor: appDarkColorScheme.shadow,

  surfaceTintColor: appDarkColorScheme.surfaceTint,

  // Per MD3 elevated card is at elevation level 1
  elevation: 0,

  margin: const EdgeInsets.only(
    left: 16,
    right: 16,
  ),

  // leaving whether we do a BorderSide to themedata or widget devlarations
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  ),
);
