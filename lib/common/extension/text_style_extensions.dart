library textstyle_extensions;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get thin => weight(FontWeight.w100);

  TextStyle get extraLight => weight(FontWeight.w200);

  TextStyle get light => weight(FontWeight.w400);

  TextStyle get regular => weight(FontWeight.normal);

  TextStyle get medium => weight(FontWeight.w500);

  TextStyle get semiBold => weight(FontWeight.w600);

  TextStyle get bold => weight(FontWeight.w700);

  TextStyle get extraBold => weight(FontWeight.w800);

  TextStyle get black => weight(FontWeight.w900);

  TextStyle get extraThickBold => weight(FontWeight.bold);

  /// Shortcut for italic
  TextStyle get italic => style(FontStyle.italic);

  /// Shortcut for underline
  TextStyle get underline =>
      textDecoration(TextDecoration.underline, color: const Color(0xff5465FF));

  /// Shortcut for line through
  TextStyle get lineThrough => textDecoration(TextDecoration.lineThrough,
      color: const Color(0xff808B97));

  /// Shortcut for overLine
  TextStyle get overLine => textDecoration(TextDecoration.overline);

  /// Shortcut for color
  TextStyle textColor(Color v) => copyWith(color: v);

  /// Shortcut for backgroundColor
  TextStyle textBackgroundColor(Color v) => copyWith(backgroundColor: v);

  /// Shortcut for fontSize
  TextStyle size(double v) => copyWith(fontSize: v);

  /// Scales fontSize up or down
  TextStyle scale(double v) => copyWith(fontSize: (fontSize ?? 0) * v);

  /// Shortcut for fontWeight
  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  /// Shortcut for FontStyle
  TextStyle style(FontStyle v) => copyWith(fontStyle: v);

  /// Shortcut for letterSpacing
  TextStyle letterSpace(double v) => copyWith(letterSpacing: v);

  /// Shortcut for wordSpacing
  TextStyle wordSpace(double v) => copyWith(wordSpacing: v);

  /// Shortcut for textBaseline
  TextStyle baseline(TextBaseline v) => copyWith(textBaseline: v);

  /// Shortcut for height
  TextStyle textHeight(double v) => copyWith(height: v);

  /// Shortcut for locale
  TextStyle textLocale(Locale v) => copyWith(locale: v);

  /// Shortcut for foreground
  TextStyle textForeground(Paint v) => copyWith(foreground: v);

  /// Shortcut for background
  TextStyle textBackground(Paint v) => copyWith(background: v);

  /// Shortcut for shadows
  TextStyle textShadows(List<Shadow> v) => copyWith(shadows: v);

  /// Shortcut for fontFeatures


  /// Shortcut for decoration
  TextStyle textDecoration(TextDecoration v,
          {Color? color, TextDecorationStyle? style, double thickness = 1}) =>
      copyWith(
          decoration: v,
          decorationColor: color,
          decorationStyle: style,
          decorationThickness: thickness);
}
