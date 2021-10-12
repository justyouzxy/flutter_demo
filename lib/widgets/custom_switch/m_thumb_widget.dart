// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart = 2.8

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


const Color _kThumbBorderColor = Color(0x0A000000);

const List<BoxShadow> _kSwitchBoxShadows = <BoxShadow> [
  BoxShadow(
    color: Color(0x26000000),
    offset: Offset(1, 5),
    blurRadius: 8.0,
  ),
  BoxShadow(
    color: Color(0x0F000000),
    offset: Offset(1, 5),
    blurRadius: 1.0,
  ),
];

const List<BoxShadow> _kSliderBoxShadows = <BoxShadow> [
  BoxShadow(
    color: Color(0x26000000),
    offset: Offset(3, 3),
    blurRadius: 8.0,
  ),
  BoxShadow(
    color: Color(0x29000000),
    offset: Offset(3, 1),
    blurRadius: 1.0,
  ),
  BoxShadow(
    color: Color(0x1A000000),
    offset: Offset(3, 3),
    blurRadius: 1.0,
  ),
];

/// Paints an iOS-style slider thumb or switch thumb.
///
/// Used by [CupertinoSwitch] and [CupertinoSlider].
class MCupertinoThumbPainter {
  /// Creates an object that paints an iOS-style slider thumb.
  const MCupertinoThumbPainter({
    this.color = CupertinoColors.white,
    this.shadows = _kSliderBoxShadows,
  }) : assert(shadows != null);

  /// Creates an object that paints an iOS-style switch thumb.
  const MCupertinoThumbPainter.switchThumb({
    Color color = CupertinoColors.white,
    List<BoxShadow> shadows = _kSwitchBoxShadows,
  }) : this(color: color, shadows: shadows);

  /// The color of the interior of the thumb.
  final Color color;

  /// The list of [BoxShadow] to paint below the thumb.
  ///
  /// Must not be null.
  final List<BoxShadow> shadows;

  /// Half the default diameter of the thumb.
  static const double radius = 14.0;

  /// The default amount the thumb should be extended horizontally when pressed.
  static const double extension = 7.0;

  /// Paints the thumb onto the given canvas in the given rectangle.
  ///
  /// Consider using [radius] and [extension] when deciding how large a
  /// rectangle to use for the thumb.
  void paint(Canvas canvas, Rect rect) {
    final RRect rrect = RRect.fromRectAndRadius(
      rect,
      Radius.circular(rect.shortestSide / 2.0),
    );
    //源代码通过画一个有偏移的圆点来设置阴影
    for (final BoxShadow shadow in shadows) {
      canvas.drawRRect(rrect.shift(shadow.offset), shadow.toPaint());
    }
    ///圆点边界border
    canvas.drawRRect(
      rrect.inflate(2),
      Paint()..color = _kThumbBorderColor,
    );
    //canvas自带的画阴影方法
    canvas.drawShadow(
        Path()..addArc(rect, 1, 2 * pi),
        Colors.grey.withOpacity(0.3),
        6,
        true
    );
    canvas.drawRRect(rrect, Paint()..color = color);

  }
}
