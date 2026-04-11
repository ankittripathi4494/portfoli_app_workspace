import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
part 'colors.dart';
abstract final class AppTheme {
  // The FlexColorScheme defined light mode ThemeData.
  static ThemeData light = FlexThemeData.light(
    // Using FlexColorScheme built-in FlexScheme enum based colors
    scheme: FlexScheme.shadRed,
    colorScheme: lightColorScheme,
    // Component theme configurations for light mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      filledButtonRadius: 13.0,
      elevatedButtonSecondarySchemeColor: SchemeColor.onPrimaryContainer,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      outlinedButtonBorderWidth: 1.5,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      listTileContentPadding: EdgeInsetsDirectional.fromSTEB(19, 3, 24, 0),
      listTileHorizontalTitleGap: 10.0,
      fabUseShape: true,
      fabAlwaysCircular: true,
      alignedDropdown: true,
      dialogElevation: 26.0,
      dialogRadius: 45.0,
      datePickerHeaderBackgroundSchemeColor: SchemeColor.primary,
      snackBarRadius: 40,
      snackBarElevation: 13,
      snackBarBackgroundSchemeColor: SchemeColor.onPrimaryFixed,
      appBarBackgroundSchemeColor: SchemeColor.primary,
      appBarIconSchemeColor: SchemeColor.onPrimary,
      appBarCenterTitle: true,
      bottomAppBarHeight: 62,
      bottomSheetBackgroundColor: SchemeColor.primary,
      bottomSheetModalBackgroundColor: SchemeColor.secondary,
      bottomSheetRadius: 50.0,
      bottomSheetElevation: 13.0,
      bottomSheetModalElevation: 7.0,
      bottomSheetClipBehavior: Clip.antiAlias,
      searchBarElevation: 2.0,
      searchViewElevation: 2.0,
      searchBarRadius: 4.0,
      searchViewRadius: 4.0,
      navigationRailUseIndicator: true,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );

  // The FlexColorScheme defined dark mode ThemeData.
  static ThemeData dark = FlexThemeData.dark(
    // Using FlexColorScheme built-in FlexScheme enum based colors.
    scheme: FlexScheme.shadRed,
    colorScheme: darkColorScheme,
    // Component theme configurations for dark mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      filledButtonRadius: 13.0,
      elevatedButtonSecondarySchemeColor: SchemeColor.onPrimaryContainer,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      outlinedButtonBorderWidth: 1.5,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      listTileContentPadding: EdgeInsetsDirectional.fromSTEB(19, 3, 24, 0),
      listTileHorizontalTitleGap: 10.0,
      fabUseShape: true,
      fabAlwaysCircular: true,
      alignedDropdown: true,
      dialogElevation: 26.0,
      dialogRadius: 45.0,
      datePickerHeaderBackgroundSchemeColor: SchemeColor.primary,
      snackBarRadius: 40,
      snackBarElevation: 13,
      snackBarBackgroundSchemeColor: SchemeColor.onPrimaryFixed,
      appBarCenterTitle: true,
      bottomAppBarHeight: 62,
      bottomSheetBackgroundColor: SchemeColor.primary,
      bottomSheetModalBackgroundColor: SchemeColor.secondary,
      bottomSheetRadius: 50.0,
      bottomSheetElevation: 13.0,
      bottomSheetModalElevation: 7.0,
      bottomSheetClipBehavior: Clip.antiAlias,
      searchBarElevation: 2.0,
      searchViewElevation: 2.0,
      searchBarRadius: 4.0,
      searchViewRadius: 4.0,
      navigationRailUseIndicator: true,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
