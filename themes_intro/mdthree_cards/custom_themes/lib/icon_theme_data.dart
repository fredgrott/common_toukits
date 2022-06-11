// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_shadows.dart';
import 'package:flutter/cupertino.dart';

final IconThemeData appLightIconThemeData = IconThemeData(
  color: appLightColorScheme.onPrimary,
  size: 24,
  shadows: iconLightShadows,
);

final IconThemeData appDarkIconThemeData = IconThemeData(
  color: appDarkColorScheme.onPrimary,
  size: 24,
  shadows: iconDarkShadows,
);
