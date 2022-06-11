// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class MyAppBarWidget extends StatelessWidget {
  final IconData? appbarActionsIcon;
  final String appbarTitle;

  const MyAppBarWidget({
    Key? key,
    required this.appbarTitle,
    this.appbarActionsIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (appbarActionsIcon == null) {
      return AppBar(
        title: Text(appbarTitle),
      );
    }

    return AppBar(
      title: Text(appbarTitle),
      actions: [
        Icon(appbarActionsIcon),
      ],
    );
  }
}
