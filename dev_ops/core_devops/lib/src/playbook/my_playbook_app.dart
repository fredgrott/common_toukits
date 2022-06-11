// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:playbook_ui/playbook_ui.dart';

class MyPlaybookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playbook Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: PlaybookGallery(
        title: 'Sample App',
        playbook: playbook,
      ),
    );
  }
  

}