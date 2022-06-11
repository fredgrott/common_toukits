// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

// Gist: My raw impl using just material and ink inkwell lasck the animation so lets do this more
//       creatively.

class MD3ElevatedCard extends StatefulWidget {
  final Clip? cardClipBehvior;
  final Color? cardColor;
  final Widget cardContent;
  final MaterialStateProperty<double> cardElevation;
  final GestureTapCallback? cardOnDoubleTap;
  final ValueChanged<bool>? cardOnFocusChange;
  final ValueChanged<bool>? cardOnHightlightChange;
  final ValueChanged<bool>? cardOnHover;
  final GestureTapCallback? cardOnLongPress;
  final GestureTapCallback cardOnTap;
  final GestureTapCancelCallback? cardOnTapCancel;
  final GestureTapDownCallback? cardOnTapDown;
  final GestureTapUpCallback? cardOnTapUp;
  final MaterialStateProperty<Color>? cardOverlayColor;
  final Color? cardShadowColor;
  final ShapeBorder? cardShape;
  final Color? cardSurfaceTintColor;

  const MD3ElevatedCard({
    Key? key,
    this.cardClipBehvior,
    this.cardColor,
    required this.cardContent,
    required this.cardElevation,
    this.cardOnDoubleTap,
    this.cardOnFocusChange,
    this.cardOnHightlightChange,
    this.cardOnHover,
    this.cardOnLongPress,
    required this.cardOnTap,
    this.cardOnTapCancel,
    this.cardOnTapDown,
    this.cardOnTapUp,
    this.cardOverlayColor,
    this.cardShadowColor,
    this.cardShape,
    this.cardSurfaceTintColor,
  }) : super(key: key);

  @override
  _MD3ElevatedCardState createState() => _MD3ElevatedCardState();
}

class _MD3ElevatedCardState extends State<MD3ElevatedCard>
    with MaterialStateMixin<MD3ElevatedCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
        top: 8,
      ),
      child: Card(
        margin: EdgeInsets.zero,
        color: widget.cardColor ?? Theme.of(context).cardColor,
        shadowColor: widget.cardShadowColor ?? Theme.of(context).shadowColor,
        surfaceTintColor: widget.cardSurfaceTintColor ??
            Theme.of(context).colorScheme.surfaceTint,
        elevation: widget.cardElevation.resolve(materialStates),
        shape: widget.cardShape ?? Theme.of(context).cardTheme.shape,
        clipBehavior:
            widget.cardClipBehvior ?? Theme.of(context).cardTheme.clipBehavior,
        child: Ink(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: InkWell(
            onTap: widget.cardOnTap,
            onDoubleTap: widget.cardOnDoubleTap,
            onLongPress: widget.cardOnLongPress,
            onTapDown: widget.cardOnTapDown,
            onTapUp: widget.cardOnTapUp,
            onTapCancel: widget.cardOnTapCancel,
            onFocusChange: widget.cardOnFocusChange,
            onHighlightChanged: widget.cardOnHightlightChange,
            onHover: widget.cardOnHover,
            overlayColor: widget.cardOverlayColor,
            customBorder: widget.cardShape ?? Theme.of(context).cardTheme.shape,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: widget.cardContent,
            ),
          ),
        ),
      ),
    );
  }
}
