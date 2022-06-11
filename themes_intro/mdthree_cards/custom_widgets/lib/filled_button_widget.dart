// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

// Gist: Per MD3 primary for Navigation however this setup so can modify for
//       non primary nav roles per the TextButtonThemeData data paremeter.
//
//       Custom shape modifications happen via the Decoration required
//       paremeter. Buttons are small enough that I do not have to
//       worry about scaling button shapes like bigger surfaces such
//       as FABs, nnavigation surfaces, cards, etc.

class FilledButtonWidget extends StatelessWidget {
  final bool autofocus;
  final ButtonStyle? buttonStyle;
  final Widget child;
  final Clip clipBehavior;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;

  const FilledButtonWidget({
    Key? key,
    this.autofocus = false,
    this.clipBehavior = Clip.none, 
    this.buttonStyle, 
    required this.child, 
    this.onFocusChange, 
    this.onHover, this.onLongPress, 
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      onPressed: onPressed,
      style: buttonStyle,
      child: child,
    );
  }
}
