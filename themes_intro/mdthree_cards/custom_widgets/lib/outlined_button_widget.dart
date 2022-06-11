// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final bool autofocus;
  final ButtonStyle? buttonStyle;
  final Widget child;
  final Clip clipBehavior;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;
  const OutlinedButtonWidget({
    Key? key,
    this.buttonStyle,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    required this.child,
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
      onHover: onHover,
      onFocusChange: onFocusChange,
      onLongPress: onLongPress,
      style: buttonStyle,
      onPressed: onPressed,
      child: child,
    );
  }
}
