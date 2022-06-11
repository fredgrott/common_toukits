// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_widgets/mycenter/my_center_widget.dart';
import 'package:playbook/playbook.dart';

const storyTitle = "Center Widget";

Scenario centerWidget() {
  return const Scenario(
    'CenterWidget',
    child: MyCenterWidget(contentText: 'contentText'),
  );
}
