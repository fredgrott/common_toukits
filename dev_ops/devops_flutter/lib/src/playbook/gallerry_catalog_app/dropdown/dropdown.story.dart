// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:devops_flutter/src/playbook/components/my_dropdown_menu_widget.dart';
import 'package:playbook/playbook.dart';

const storyTitle = 'DropDown Widget';

Scenario dropdownWidget() {
  return Scenario('Dropdown Widget', child: MyDropDownMenuWidget());
}
