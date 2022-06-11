// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class MyCenterWidget extends StatelessWidget {
  final String contentText;
  const MyCenterWidget({
    Key? key,
    required this.contentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(contentText),
    );
  }
}
