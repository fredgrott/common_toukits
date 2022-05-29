// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:core_devoops/src/domain/infrastructure/build_constants.dart';
import 'package:core_devoops/src/domain/models/build_environment.dart';

void main() {
  BuildConstants().setEnvironment(BuildEnvironment.storySnapshot);
  // runApp(MyStorySnapshot());
}
