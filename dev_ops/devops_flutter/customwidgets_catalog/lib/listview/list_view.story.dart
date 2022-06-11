// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_widgets/custom_widgets.dart';
import 'package:playbook/playbook.dart';

const storyTitle = "ListView Widget";

Scenario listView() {
  return const Scenario('listview', child: MyListViewWidget(),);
}
