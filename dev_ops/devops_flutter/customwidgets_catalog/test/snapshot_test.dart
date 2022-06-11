// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:customwidgets_catalog/generated_playbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:playbook_snapshot/playbook_snapshot.dart';

Future<void> main() async {
  testWidgets('Take snapshots', (tester) async {
    await playbook.run(
      const Snapshot(
        directoryPath: 'screenshots',
        devices: [
          SnapshotDevice.iPhone8,
          SnapshotDevice.iPhone11,
          SnapshotDevice.iPhoneSE,
          SnapshotDevice.pixel4,
          SnapshotDevice.xperia,
        ],
      ),
      tester,
      (Widget widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Material(child: widget),
        );
      },
    );
  },);
}
