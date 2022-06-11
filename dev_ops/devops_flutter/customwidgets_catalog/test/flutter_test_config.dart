// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      
    ),
  );
}
