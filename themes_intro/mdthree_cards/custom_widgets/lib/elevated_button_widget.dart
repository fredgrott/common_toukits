// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final bool autofocus;
  final ButtonStyle? buttonStyle;
  final Widget child;
  final Clip clipBehavior;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;

  const ElevatedButtonWidget({
    Key? key,
    this.autofocus = false,
    this.clipBehavior = Clip.none, 
    this.buttonStyle, 
    required this.child, 
    this.onFocusChange, 
    this.onHover, 
    this.onLongPress, 
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      style: buttonStyle,
      onPressed: onPressed,
      child: child,
    );
  }
}
