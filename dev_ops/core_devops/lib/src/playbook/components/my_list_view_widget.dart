// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:core_devoops/src/presentation/features/sample_feature/sample_item.dart';
import 'package:flutter/material.dart';

class MyListViewWidget extends StatelessWidget {
  final List<SampleItem> listViewItems;

  const MyListViewWidget({
    super.key,
    this.listViewItems = const [
      SampleItem(1),
      SampleItem(2),
      SampleItem(3),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      restorationId: 'sampleItemListView',
      itemCount: listViewItems.length,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        final item = listViewItems[index];

        return ListTile(
           title: Text('SampleItem ${item.id}'),
           leading: const CircleAvatar(
            // Display the Flutter Logo image asset.
            foregroundImage: AssetImage('assets/images/flutter_logo.png'),
          ),
          // ignore: no-empty-block
          onTap: (){},
        );
      },
    );
  }
}
