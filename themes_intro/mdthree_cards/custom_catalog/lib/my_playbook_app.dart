// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:custom_catalog/generated_playbook.dart';
import 'package:custom_themes/custom_themes.dart';
import 'package:flutter/material.dart';
import 'package:playbook_ui/playbook_ui.dart';

class MyPlaybookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playbook Demo',
      theme: appLightThemeData,
      darkTheme: appDarkThemeData,
      themeMode: ThemeMode.light,
      home: PlaybookGallery(
        title: 'Sample App',
        playbook: playbook,
      ),
    );
  }
}
