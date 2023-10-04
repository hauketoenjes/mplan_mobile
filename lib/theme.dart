import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Returns a [ThemeData] object with the given [brightness].
ThemeData getTheme(Brightness brightness) {
  final baseTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber,
      brightness: brightness,
    ),
    brightness: brightness,
    useMaterial3: true,
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  final textTheme = GoogleFonts.plusJakartaSansTextTheme(baseTheme.textTheme);

  return baseTheme.copyWith(textTheme: textTheme);
}
