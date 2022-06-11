// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:devops_flutter/src/playbook/components/my_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:playbook/playbook.dart';

const storyTitle = 'AppBarWidget';

Scenario appBarJustTitle() {
  return const Scenario(
    'AppBarJustTitle',
    child: MyAppBarWidget(
      appbarTitle: 'JustATitle',
    ),
  );
}

Scenario appBarTitleNActionsIcon() {
  return const Scenario('AppBarTitleNActionsIcon', child: MyAppBarWidget(appbarTitle: 'TitleNActionsIcon', appbarActionsIcon: Icons.safety_check,),);
}
