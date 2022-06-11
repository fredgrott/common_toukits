// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class FilledTonalButtonWidget extends StatelessWidget {
  final bool autofocus;
  final ButtonStyle? buttonStyle;
  final Widget child;
  final Clip clipBehavior;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;

  const FilledTonalButtonWidget({
    Key? key,
    this.autofocus = false,
    this.buttonStyle,
    required this.child,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.onFocusChange,
    this.onHover,
    this.onLongPress,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      style: buttonStyle,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      onPressed: onPressed,
      child: child,
    );
  }
}
