import 'package:flutter/material.dart';

extension CssViewportUnits on double {

  static const double _fontSizeDef = 14;
  static Size? _screenSize;
  static double? _fontSize;

  /// Set viewport sizes from context (MediaQuery size)
  ///
  /// Set default font size from context (Theme textTheme bodyText1 fontSize)
  static void initContextSizes(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    _fontSize =
        Theme.of(context).textTheme.bodyMedium?.fontSize ?? _fontSizeDef;
  }

  /// Set custom default font size
  static void initDefaultFontSize(double fontSize) {
    if (fontSize > 0.0) _fontSize = fontSize;
  }

  /// Set viewport sizes from constraints
  static void initConstraintsSize(BoxConstraints constraints) {
    initCustomSize(constraints.biggest);
  }

  /// Set custom viewport sizes
  static void initCustomSize(Size size) {
    if (!size.isEmpty) _screenSize = size;
  }

  /// vmin - percent of smallest between width or height of viewport
  ///
  /// If our viewport is 1440px wide and 800px tall, and if we set element
  /// to have a width of 50.vmin, it’ll be 50% of the height (400px).
  /// When the viewport is resized the value is recalculated.
  double get vmin {
    return this / 100.0 * (_screenSize?.shortestSide ?? 100.0);
  }

  /// vmax - percent of largest between width or height of viewport
  ///
  /// If our viewport is 1440px wide and 800px tall, and if we set element
  /// to have a width of 50.vmax, it’ll be 50% of the width (720px).
  /// When the viewport is resized the value is recalculated.
  double get vmax {
    return this / 100.0 * (_screenSize?.longestSide ?? 100.0);
  }

  /// vw  - percent of viewport width
  ///
  /// Setting an element to a width value of 50.vw means that
  /// the element will have a width that’s 50% of the viewport size,
  /// and this stays true when the viewport is resized
  double get vw {
    return this / 100.0 * (_screenSize?.width ?? 100.0);
  }

  /// vh  - percent of viewport height
  ///
  /// Setting an element to a height value of 50.vh means that
  /// the element will have a height that’s 50% of the viewport size,
  /// and this stays true when the viewport is resized
  double get vh {
    return this / 100.0 * (_screenSize?.height ?? 100.0);
  }

  /// rem - value relative to current font size
  ///
  /// Setting an element to a height value of 2.rem means that
  /// the element will have a height that’s equals 2 * current font size
  /// (2 * 14.0 = 28.0)
  ///
  /// By default 1.rem = 14.0 (default font size)
  double get rem {
    return this * (_fontSize ?? _fontSizeDef);
  }

  /// pc - Percent % = 1/100 of value
  ///
  /// FractionallySizedBox(
  ///         widthFactor: 50.pc,
  ///         heightFactor: 50.pc,
  ///         child: ...
  double get pc {
    return this / 100.0;
  }
}

extension IntCssViewportUnits on int {
  /// vmin - percent of smallest between width or height of viewport
  ///
  /// If our viewport is 1440px wide and 800px tall, and if we set element
  /// to have a width of 50.vmin, it’ll be 50% of the height (400px).
  /// When the viewport is resized the value is recalculated.
  double get vmin => toDouble().vmin;

  /// vmax - percent of largest between width or height of viewport
  ///
  /// If our viewport is 1440px wide and 800px tall, and if we set element
  /// to have a width of 50.vmax, it’ll be 50% of the width (720px).
  /// When the viewport is resized the value is recalculated.
  double get vmax => toDouble().vmax;

  /// vw  - percent of viewport width
  ///
  /// Setting an element to a width value of 50.vw means that
  /// the element will have a width that’s 50% of the viewport size,
  /// and this stays true when the viewport is resized
  double get vw => toDouble().vw;

  /// vh  - percent of viewport height
  ///
  /// Setting an element to a height value of 50.vh means that
  /// the element will have a height that’s 50% of the viewport size,
  /// and this stays true when the viewport is resized
  double get vh => toDouble().vh;

  /// rem - value relative to current font size
  ///
  /// Setting an element to a height value of 2.rem means that
  /// the element will have a height that’s equals 2 * current font size
  /// (2 * 14.0 = 28.0)
  ///
  /// By default 1.rem = 14.0 (default font size)
  double get rem => toDouble().rem;

  /// pc - Percent % = 1/100 of value
  ///
  /// FractionallySizedBox(
  ///         widthFactor: 50.pc,
  ///         heightFactor: 50.pc,
  ///         child: ...
  double get pc => toDouble().pc;
}