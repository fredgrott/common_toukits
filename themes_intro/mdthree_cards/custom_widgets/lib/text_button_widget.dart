// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  
  final bool autofocus;
  final Widget child;
  final Clip clipBehavior;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback onPressed;
  
  const TextButtonWidget({
    Key? key,
    this.onFocusChange,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.onHover,
    this.onLongPress,
    required this.onPressed,
    required this.child, this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      onPressed: onPressed,
      child: child,
    );
  }
}
