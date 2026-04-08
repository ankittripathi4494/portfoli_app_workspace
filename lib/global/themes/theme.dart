import 'package:flutter/material.dart';

/// The Curated Gallery - Design System
class GalleryTheme {
  // ==========================================
  // 1. COLORS & SURFACE TOKENS (LIGHT)
  // ==========================================
  static const Color _background = Color(0xFFF7F9FB);
  static const Color _surface = Color(0xFFF7F9FB);
  static const Color _surfaceContainerLow = Color(0xFFF2F4F6);
  static const Color _surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color _surfaceContainerHighest = Color(0xFFE0E3E5);
  static const Color _surfaceContainerHigh = Color(0xFFE6E8EA);

  static const Color _primary = Color(0xFF000000);
  static const Color _primaryContainer = Color(0xFF131B2E);
  static const Color _onPrimary = Color(0xFFFFFFFF);
  static const Color _onSurface = Color(0xFF191C1E);
  static const Color _outlineVariant = Color(0xFFC6C6CD);

  // Emerald Vitality
  static const Color _tertiaryFixed = Color(0xFF6FFBBE);
  static const Color _onTertiaryFixed = Color(0xFF002113);
  static const Color _tertiaryAccent = Color(0xFF009668);

  // ==========================================
  // 2. COLORS & SURFACE TOKENS (DARK)
  // ==========================================
  static const Color _backgroundDark = Color(0xFF0C0E12); // Deep midnight slate
  static const Color _surfaceDark = Color(0xFF0C0E12);
  static const Color _surfaceContainerLowDark = Color(
    0xFF13161C,
  ); // Slightly lighter for sections
  static const Color _surfaceContainerLowestDark = Color(
    0xFF1A1E26,
  ); // Lifted cards
  static const Color _surfaceContainerHighDark = Color(
    0xFF232832,
  ); // Hover/Secondary buttons
  static const Color _surfaceContainerHighestDark = Color(
    0xFF2C323E,
  ); // Overlays/Modals

  static const Color _primaryDark = Color(0xFFFFFFFF); // Pearl white
  static const Color _primaryContainerDark = Color(
    0xFFD4D8E0,
  ); // Silver/Metallic
  static const Color _onPrimaryDark = Color(
    0xFF000000,
  ); // Ink black text on light buttons
  static const Color _onSurfaceDark = Color(
    0xFFE6E8EA,
  ); // Crisp light text, not pure white
  static const Color _outlineVariantDark = Color(
    0xFF383E4C,
  ); // Ghost border dark

  static const Color _tertiaryAccentDark = Color(
    0xFF00D18F,
  ); // Brighter Emerald for dark mode

  // ==========================================
  // 3. TYPOGRAPHY (Manrope & Inter)
  // ==========================================
  static TextTheme _getTextTheme(Color textColor) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 56.0,
        fontWeight: FontWeight.w700,
        letterSpacing: -1.12,
        color: textColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        height: 1.6,
        color: textColor,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.0,
        letterSpacing: 0.6,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
    );
  }

  // ==========================================
  // 4. AMBIENT SHADOWS & GRADIENTS
  // ==========================================
  static List<BoxShadow> ambientShadow(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return [
      BoxShadow(
        color: isDark
            ? Colors.black.withValues(alpha: 0.4)
            : _onSurface.withValues(alpha: 0.05),
        blurRadius: 50.0,
        offset: const Offset(0, 10),
      ),
    ];
  }

  static LinearGradient primaryGradient(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return LinearGradient(
      colors: isDark
          ? [_primaryDark, _primaryContainerDark]
          : [_primary, _primaryContainer],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: const GradientRotation(2.35619),
    );
  }

  // ==========================================
  // 5. LIGHT THEME
  // ==========================================
  static ThemeData get lightTheme {
    return _buildTheme(
      brightness: Brightness.light,
      bg: _background,
      surface: _surface,
      surfaceLow: _surfaceContainerLow,
      surfaceLowest: _surfaceContainerLowest,
      surfaceHigh: _surfaceContainerHigh,
      surfaceHighest: _surfaceContainerHighest,
      primary: _primary,
      onPrimary: _onPrimary,
      primaryContainer: _primaryContainer,
      onSurface: _onSurface,
      outline: _outlineVariant,
      tertiary: _tertiaryAccent,
      chipBg: _tertiaryFixed,
      chipText: _onTertiaryFixed,
    );
  }

  // ==========================================
  // 6. DARK THEME
  // ==========================================
  static ThemeData get darkTheme {
    return _buildTheme(
      brightness: Brightness.dark,
      bg: _backgroundDark,
      surface: _surfaceDark,
      surfaceLow: _surfaceContainerLowDark,
      surfaceLowest:
          _surfaceContainerLowestDark, // Cards are slightly lighter than BG
      surfaceHigh: _surfaceContainerHighDark,
      surfaceHighest: _surfaceContainerHighestDark,
      primary: _primaryDark,
      onPrimary: _onPrimaryDark,
      primaryContainer: _primaryContainerDark,
      onSurface: _onSurfaceDark,
      outline: _outlineVariantDark,
      tertiary: _tertiaryAccentDark,
      chipBg: _tertiaryFixed, // Emerald accent stays exactly the same
      chipText: _onTertiaryFixed,
    );
  }

  // ==========================================
  // BASE THEME BUILDER (DRY Principle)
  // ==========================================
  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color bg,
    required Color surface,
    required Color surfaceLow,
    required Color surfaceLowest,
    required Color surfaceHigh,
    required Color surfaceHighest,
    required Color primary,
    required Color onPrimary,
    required Color primaryContainer,
    required Color onSurface,
    required Color outline,
    required Color tertiary,
    required Color chipBg,
    required Color chipText,
  }) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: bg,
      textTheme: _getTextTheme(onSurface),

      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        secondary: surfaceHigh,
        onSecondary: onSurface,
        surface: surface,
        onSurface: onSurface,
        surfaceContainerLow: surfaceLow,
        surfaceContainerLowest: surfaceLowest,
        surfaceContainerHigh: surfaceHigh,
        surfaceContainerHighest: surfaceHighest,
        outlineVariant: outline,
        tertiary: tertiary,
        error: Colors.redAccent,
        onError: Colors.white,
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: surfaceHigh,
          foregroundColor: onSurface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: tertiary,
          textStyle: _getTextTheme(onSurface).labelMedium,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: chipBg,
        labelStyle: _getTextTheme(
          onSurface,
        ).labelMedium?.copyWith(color: chipText),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9999),
        ),
        side: BorderSide.none,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceLow,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(
            color: primary.withValues(alpha: 0.20),
            width: 1.0,
          ),
        ),
        focusColor: surfaceLowest,
      ),

      cardTheme: CardThemeData(
        color: surfaceLowest,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
    );
  }
}
