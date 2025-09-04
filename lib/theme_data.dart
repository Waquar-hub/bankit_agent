import 'package:flutter/material.dart';

class AppTheme{
    AppTheme._();

    ThemeData themeData = FlexThemeData.light(
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      swapLegacyOnMaterial3: false,
      useMaterial3: true,
      scheme: FlexScheme.sanJuanBlue,
      surfaceTint: Colors.transparent,
      textTheme: const TextTheme(),
      fontFamily: GoogleFonts.rubik().fontFamily,
      dialogBackground: Colors.grey.shade100,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        blendOnColors: false,
        useTextTheme: true,
        useM2StyleDividerInM3: true,
        alignedDropdown: true,
        useInputDecoratorThemeInDialogs: true,
      ),
    );
}