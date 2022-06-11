// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_bar_theme.dart';
import 'package:custom_themes/app_brand_colors.dart';
import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/card_theme.dart';


import 'package:custom_themes/elevated_button_theme_data.dart';
import 'package:custom_themes/fab_theme_data.dart';
import 'package:custom_themes/icon_theme_data.dart';
import 'package:custom_themes/outlined_button_theme_data.dart';
import 'package:custom_themes/text_button_theme_data.dart';
import 'package:custom_themes/text_theme.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:custom_themes/toggle_buttons_theme_data.dart';
import 'package:custom_themes/tooltip_theme_data.dart';
import 'package:custom_themes/typography.dart';

import 'package:flutter/material.dart';

final ThemeData appLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<AppBrandColors>>[
    AppBrandColors(
      brandOneLight: brandOneLightPrimary,
      brandOneDark: brandOneDarkPrimary,
      brandTwoLight: brandTwoLightPrimary,
      brandTwoDark: brandTwoDarkPrimary,
      brandThreeLight: brandThreeLightPrimary,
      brandThreeDark: brandThreeDarkPrimary,
    ),
  ],
  useMaterial3: true,
  appBarTheme: appLightAppBarTheme,
  cardTheme: appLightCardTheme,
  elevatedButtonTheme: appLightElevatedButtonThemeData,
  iconTheme: appLightIconThemeData,
  outlinedButtonTheme: appLightOutlinedButtonThemeData,
  textButtonTheme: appLightTextButtonThemeData,
  textTheme: appMateriaLightTextTheme,
  typography: appTypography,
  tooltipTheme: appLightTooltipThemeData,
  colorScheme: appLightColorScheme,
  brightness: Brightness.light,
  primaryColor: appMaterialLightPrimaryColor,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  shadowColor: appMaterialLightShadowColor,
  canvasColor: appMaterialLightCanvasColor,
  scaffoldBackgroundColor: appMaterialLightScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialLightBottomAppBarColor,
  cardColor: appMaterialLightCardColor,
  dividerColor: appMaterialLightDividerColor,
  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  selectedRowColor: appMaterialLightSelectedRowColor,
  unselectedWidgetColor: appMaterialLightUnselectedWidgetColor,
  disabledColor: appMaterialLightDisabledColor,
  secondaryHeaderColor: appMaterialLightSecondaryHeaderColor,
  backgroundColor: appMaterialLightBackgroundColor,
  dialogBackgroundColor: appMaterialLightDialogBackgroundColor,
  indicatorColor: appMaterialLightIndicatorColor,
  hintColor: appMaterialLightHintColor,
  errorColor: appMaterialLightErrorColor,
  toggleableActiveColor: appMaterialLightToggleableActiveColor,
  floatingActionButtonTheme: appLightFABThemeData,
  toggleButtonsTheme: appLightToggleButtonsThemeData,




);

final ThemeData appDarkThemeData = ThemeData(
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<AppBrandColors>>[
    AppBrandColors(
      brandOneLight: brandOneLightPrimary,
      brandOneDark: brandOneDarkPrimary,
      brandTwoLight: brandTwoLightPrimary,
      brandTwoDark: brandTwoDarkPrimary,
      brandThreeLight: brandThreeLightPrimary,
      brandThreeDark: brandThreeDarkPrimary,
    ),
  ],
  useMaterial3: true,
  appBarTheme: appDarkAppBarTheme,
  cardTheme: appDarkCardTheme,
  elevatedButtonTheme: appDarkElevatedButtonThemeData,
  iconTheme: appDarkIconThemeData,
  outlinedButtonTheme: appDarkOutlinedButtonThemeData,
  textButtonTheme: appDarkTextButtonThemeData,
  textTheme: appMaterialDarkTextTheme,
  typography: appTypography,
  tooltipTheme: appDarkTooltipThemeData,
  colorScheme: appDarkColorScheme,
  brightness: Brightness.dark,
  primaryColor: appMaterialDarkPrimaryColor,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  shadowColor: appMaterialDarkShadowColor,
  canvasColor: appMaterialDarkCanvasColor,
  scaffoldBackgroundColor: appMaterialDarkScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialDarkBottomAppBarColor,
  cardColor: appMaterialDarkCardColor,
  dividerColor: appMaterialDarkDividerColor,
  highlightColor: appMaterialDarkHighLightColor,
  splashColor: appMaterialDarkSplashColor,
  selectedRowColor: appMaterialDarkSelectedRowColor,
  unselectedWidgetColor: appMaterialDarkUnselectedWidgetColor,
  disabledColor: appMaterialDarkDisabledColor,
  secondaryHeaderColor: appMaterialDarkSecondaryHeaderColor,
  backgroundColor: appMaterialDarkBackgroundColor,
  dialogBackgroundColor: appMaterialDarkDialogBackgroundColor,
  indicatorColor: appMaterialDarkIndicatorColor,
  hintColor: appMaterialDarkHintColor,
  errorColor: appMaterialDarkErrorColor,
  toggleableActiveColor: appMaterialDarkToggleableActiveColor,
  floatingActionButtonTheme: appDarkFABThemeData,
  toggleButtonsTheme: appDarkToggleButtonsThemeData,

);
