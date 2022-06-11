// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class FilledIconButtonWidget extends StatelessWidget {
  final bool? autofocus;
  final ButtonStyle? buttonStyle;
  final Clip? clipBehavior;
  final FocusNode? focusNode;
  final Widget icon;
  final Widget label;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;
  const FilledIconButtonWidget({
    Key? key,
    this.autofocus,
    this.buttonStyle,
    this.clipBehavior,
    this.focusNode,
    required this.icon,
    required this.label,
    this.onFocusChange,
    this.onHover,
    this.onLongPress,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      focusNode: focusNode,
      style: buttonStyle,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      onPressed: onPressed,
      icon: icon,
      label: label,
    );
  }
}
