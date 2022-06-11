// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class FilledTonalIconButtonWidget extends StatelessWidget {
  final bool? autofocus;
  final ButtonStyle? buttonStyle;
  final Clip? clipBehavior;
  final FocusNode? focusNode;
  final Widget icon;
  final Widget label;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;

  const FilledTonalIconButtonWidget({
    Key? key,
    this.autofocus,
    this.buttonStyle,
    this.clipBehavior,
    this.focusNode,
    required this.icon,
    required this.label,
    this.onLongPress,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
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
