// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

// Gist: The goal here is to balance adhering to the MD3 specs while at the
//       same time imeplementing enough hooks to give some creative extra design
//       power.
//
//       InkWell vs InkResponse
//         -InkResponse has unbounded ink ripples
//         -InkWell bounds the ripple in a box container so the ripple
//          does not happen outside that container.
//
//       Preferred way to set hover color, focus color, highlight color, and splash color is
//       to set the overlay color using Material States.
//
//       inkClipRadius would be used in ListTile application of cards to limit the inkripple via clipping it.

class ElevatedRoundedCardWidget extends StatefulWidget {
  final Widget cardChild;

  final Color? cardColor;

  /// While Material Design 3 specifies two distict shapes of Material Surfaces, it's still nive to
  /// able to further creativily add to the visual look of the shape.
  final Decoration? cardDecoration;

  /// Per Material Design 3 Card spec specific cars, Elevated and Filled change elevations
  /// per materialStates
  final MaterialStateProperty<double> cardElevation;
  // needs to default to Rounded Rectangle or Beveled

  /// Focuse color, has to be set in addition to the overlay color
  final Color? cardFocusColor;

  /// Highlight color, has to be set in addition to overlay color
  final Color? cardHighlightColor;

  /// Hover Color, has to be set in addition to overlay color
  final Color? cardHoverColor;

  /// The Border Radius denoting the radius to clip the ink response, i.e. ripple
  final BorderRadius? cardInkClipRadius;

  // Overlay Color of the card via Material States
  final MaterialStateProperty<Color>? cardOverlayColor;

  /// Shadow color via Material States to provide a way to creatively add more design power
  final MaterialStateProperty<List<BoxShadow>> cardShadowColor;

  /// Splash Color of the Card ink response, i.e. ripple
  final Color? cardSplashColor;

  /// Surface Tint Color via Material States to add a little design power
  final Color cardSurfaceTintColor;

  /// FocusNode to obtain focus for keyboard events
  final FocusNode? focusNode;

  /// inkRadius is the radius of the ink ripple
  final double? inkRadius;

  /// MouseCursor
  final MouseCursor? mouseCursor;

  final GestureTapCallback? onDoubleTap;

  /// onFocusChanged denotes whether a focus event was triggerred
  final ValueChanged<bool>? onFocusChange;

  /// Called when this part of the material either becomes highlighted or stops
  /// being highlighted.
  ///
  /// The value passed to the callback is true if this part of the material has
  /// become highlighted and false if this part of the material has stopped
  /// being highlighted.
  ///
  /// If all of [onTap], [onDoubleTap], and [onLongPress] become null while a
  /// gesture is ongoing, then [onTapCancel] will be fired and
  /// [onHighlightChanged] will be fired with the value false _during the
  /// build_. This means, for instance, that in that scenario [State.setState]
  /// cannot be called.
  final ValueChanged<bool>? onHighlightChanged;

  /// Called when a pointer enters or exits the ink response area.
  ///
  /// The value passed to the callback is true if a pointer has entered this
  /// part of the material and false if a pointer has exited this part of the
  /// material.
  final ValueChanged<bool>? onHover;

  /// Called when the user long-presses on this part of the material.
  final GestureLongPressCallback? onLongPress;

  /// Called when the user taps this part of the material.
  final GestureTapCallback? onTap;

  /// Called when the user cancels a tap that was started on this part of the
  /// material.
  final GestureTapCancelCallback? onTapCancel;

  /// Called when the user taps down this part of the material.
  final GestureTapDownCallback? onTapDown;

  /// Called when the user releases a tap that was started on this part of the
  /// material. [onTap] is called immediately after.
  final GestureTapUpCallback? onTapUp;

  const ElevatedRoundedCardWidget({
    Key? key,
    required this.cardChild,
    this.cardColor,
    this.cardDecoration,
    required this.cardElevation,
    this.cardFocusColor,
    this.cardHighlightColor,
    this.cardHoverColor,
    this.cardInkClipRadius,
    this.cardOverlayColor,
    required this.cardShadowColor,
    this.cardSplashColor,
    required this.cardSurfaceTintColor,
    this.focusNode,
    this.inkRadius,
    this.mouseCursor,
    this.onDoubleTap,
    this.onFocusChange,
    this.onHighlightChanged,
    this.onHover,
    this.onLongPress,
    this.onTap,
    this.onTapCancel,
    this.onTapDown,
    this.onTapUp,
  }) : super(key: key);

  @override
  _ElevatedRoundedCardWidgetState createState() =>
      _ElevatedRoundedCardWidgetState();
}

class _ElevatedRoundedCardWidgetState extends State<ElevatedRoundedCardWidget>
    with MaterialStateMixin<ElevatedRoundedCardWidget> {
  @override
  Widget build(BuildContext context) {
    

    return Padding(
      // Per MD3 8 dp max padding between cards
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
      child: Material(
        type: MaterialType.card,
        elevation: widget.cardElevation.resolve(materialStates),
        surfaceTintColor: widget.cardSurfaceTintColor,
        
        

        child: Ink(
          
          
          decoration: BoxDecoration(
            color: widget.cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),

            boxShadow: widget.cardShadowColor.resolve(materialStates),
            
          ),
          child: InkWell(
            radius: widget.inkRadius,
            onFocusChange: widget.onFocusChange,
            focusNode: widget.focusNode,
            mouseCursor: widget.mouseCursor,
            onHover: widget.onHover,
            onHighlightChanged: widget.onHighlightChanged,
            onTapUp: widget.onTapUp,
            onTapDown: widget.onTapDown,
            onTapCancel: widget.onTapCancel,
            onLongPress: widget.onLongPress,
            onDoubleTap: widget.onDoubleTap,
            onTap: widget.onTap,
            focusColor: widget.cardFocusColor,
            hoverColor: widget.cardHoverColor,
            highlightColor: widget.cardHighlightColor,
            splashColor: widget.cardSplashColor,
            overlayColor: widget.cardOverlayColor,
            borderRadius: widget.cardInkClipRadius,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: widget.cardChild,
              ),
            
          ),
        ),
      ),
    );
  }
}
