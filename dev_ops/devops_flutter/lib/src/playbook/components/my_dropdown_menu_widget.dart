// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:devops_flutter/src/presentation/features/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class MyDropDownMenuWidget extends StatelessWidget {
  final ThemeMode appThemeMode;

  const MyDropDownMenuWidget({
    Key? key, required this.appThemeMode,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<ThemeMode>(
      // Read the selected themeMode from the controller
      value: this.appThemeMode,
      // Call the updateThemeMode method any time the user selects a theme.
      onChanged: null,
      items: const [
        DropdownMenuItem(
          value: ThemeMode.system,
          child: Text('System Theme'),
        ),
        DropdownMenuItem(
          value: ThemeMode.light,
          child: Text('Light Theme'),
        ),
        DropdownMenuItem(
          value: ThemeMode.dark,
          child: Text('Dark Theme'),
        ),
      ],
    );
  }
}
