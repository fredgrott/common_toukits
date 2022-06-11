// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class OutlinedIconButtonWidget extends StatelessWidget {
  final bool? autofocus;
  final ButtonStyle? buttonStyle;
  final Clip? clipBehavior;
  
  
  
  final FocusNode? focusNode;
  
  final Widget icon;
  final Widget label;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;
  final Key? outlinedKey;
  
  
  const OutlinedIconButtonWidget({
    Key? key,
    this.outlinedKey,
    this.clipBehavior,
    this.autofocus,
    this.focusNode,
    this.buttonStyle,
    this.onLongPress,
    required this.onPressed,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      key: outlinedKey,
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      focusNode: focusNode,
      style: buttonStyle,
      onLongPress: onLongPress,
      onPressed: onPressed,
      icon: icon,
      label: label,
    );
  }
}
