import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:shadcn_ui/src/theme/data.dart';
import 'package:shadcn_ui/src/theme/themes/components/button.dart';

@immutable
class ShadcnSlateTheme extends ShadcnThemeData {
  const ShadcnSlateTheme({
    required super.background,
    required super.foreground,
    required super.card,
    required super.cardForeground,
    required super.popover,
    required super.popoverForeground,
    required super.primary,
    required super.primaryForeground,
    required super.secondary,
    required super.secondaryForeground,
    required super.muted,
    required super.mutedForeground,
    required super.accent,
    required super.accentForeground,
    required super.destructive,
    required super.destructiveForeground,
    required super.border,
    required super.input,
    required super.ring,
    required super.radius,
    required super.brightness,
    required super.primaryButtonTheme,
    required super.secondaryButtonTheme,
    required super.destructiveButtonTheme,
    required super.outlineButtonTheme,
    required super.ghostButtonTheme,
    required super.linkButtonTheme,
  });

  factory ShadcnSlateTheme.light({
    Color background = const Color(0xffffffff),
    Color foreground = const Color(0xff020817),
    Color card = const Color(0xffffffff),
    Color cardForeground = const Color(0xff020817),
    Color popover = const Color(0xffffffff),
    Color popoverForeground = const Color(0xff020817),
    Color primary = const Color(0xff0f172a),
    Color primaryForeground = const Color(0xfff8fafc),
    Color secondary = const Color(0xfff1f5f9),
    Color secondaryForeground = const Color(0xff0f172a),
    Color muted = const Color(0xfff1f5f9),
    Color mutedForeground = const Color(0xff64748b),
    Color accent = const Color(0xfff1f5f9),
    Color accentForeground = const Color(0xff0f172a),
    Color destructive = const Color(0xffef4444),
    Color destructiveForeground = const Color(0xfff8fafc),
    Color border = const Color(0xffe2e8f0),
    Color input = const Color(0xffe2e8f0),
    Color ring = const Color(0xff020817),
    BorderRadius radius = const BorderRadius.all(Radius.circular(8)),
    ShadcnButtonTheme? primaryButtonTheme,
    ShadcnButtonTheme? secondaryButtonTheme,
    ShadcnButtonTheme? destructiveButtonTheme,
    ShadcnButtonTheme? outlineButtonTheme,
    ShadcnButtonTheme? ghostButtonTheme,
    ShadcnButtonTheme? linkButtonTheme,
  }) {
    return ShadcnSlateTheme(
      brightness: Brightness.light,
      background: background,
      foreground: foreground,
      card: card,
      cardForeground: cardForeground,
      popover: popover,
      popoverForeground: popoverForeground,
      primary: primary,
      primaryForeground: primaryForeground,
      secondary: secondary,
      secondaryForeground: secondaryForeground,
      muted: muted,
      mutedForeground: mutedForeground,
      accent: accent,
      accentForeground: accentForeground,
      destructive: destructive,
      destructiveForeground: destructiveForeground,
      border: border,
      input: input,
      ring: ring,
      radius: radius,
      primaryButtonTheme: primaryButtonTheme,
      secondaryButtonTheme: secondaryButtonTheme,
      destructiveButtonTheme: destructiveButtonTheme,
      outlineButtonTheme: outlineButtonTheme,
      ghostButtonTheme: ghostButtonTheme,
      linkButtonTheme: linkButtonTheme,
    );
  }

  factory ShadcnSlateTheme.dark({
    Color background = const Color(0xff020817),
    Color foreground = const Color(0xfff8fafc),
    Color card = const Color(0xff020817),
    Color cardForeground = const Color(0xfff8fafc),
    Color popover = const Color(0xff020817),
    Color popoverForeground = const Color(0xfff8fafc),
    Color primary = const Color(0xfff8fafc),
    Color primaryForeground = const Color(0xff0f172a),
    Color secondary = const Color(0xff1e293b),
    Color secondaryForeground = const Color(0xfff8fafc),
    Color muted = const Color(0xff1e293b),
    Color mutedForeground = const Color(0xff94a3b8),
    Color accent = const Color(0xff1e293b),
    Color accentForeground = const Color(0xfff8fafc),
    Color destructive = const Color(0xff7f1d1d),
    Color destructiveForeground = const Color(0xfff8fafc),
    Color border = const Color(0xff1e293b),
    Color input = const Color(0xff1e293b),
    Color ring = const Color(0xffcbd5e1),
    BorderRadius radius = const BorderRadius.all(Radius.circular(8)),
    ShadcnButtonTheme? primaryButtonTheme,
    ShadcnButtonTheme? secondaryButtonTheme,
    ShadcnButtonTheme? destructiveButtonTheme,
    ShadcnButtonTheme? outlineButtonTheme,
    ShadcnButtonTheme? ghostButtonTheme,
    ShadcnButtonTheme? linkButtonTheme,
  }) {
    return ShadcnSlateTheme(
      brightness: Brightness.dark,
      background: background,
      foreground: foreground,
      card: card,
      cardForeground: cardForeground,
      popover: popover,
      popoverForeground: popoverForeground,
      primary: primary,
      primaryForeground: primaryForeground,
      secondary: secondary,
      secondaryForeground: secondaryForeground,
      muted: muted,
      mutedForeground: mutedForeground,
      accent: accent,
      accentForeground: accentForeground,
      destructive: destructive,
      destructiveForeground: destructiveForeground,
      border: border,
      input: input,
      ring: ring,
      radius: radius,
      primaryButtonTheme: primaryButtonTheme,
      secondaryButtonTheme: secondaryButtonTheme,
      destructiveButtonTheme: destructiveButtonTheme,
      outlineButtonTheme: outlineButtonTheme,
      ghostButtonTheme: ghostButtonTheme,
      linkButtonTheme: linkButtonTheme,
    );
  }
}
