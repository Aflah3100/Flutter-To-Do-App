import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff236488),
      surfaceTint: Color(0xff236488),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc8e6ff),
      onPrimaryContainer: Color(0xff001e2e),
      secondary: Color(0xff4f616e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd2e5f5),
      onSecondaryContainer: Color(0xff0b1d29),
      tertiary: Color(0xff63597c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe9ddff),
      onTertiaryContainer: Color(0xff1f1635),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffdde3ea),
      onSurfaceVariant: Color(0xff41484d),
      outline: Color(0xff71787e),
      outlineVariant: Color(0xffc1c7ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f6),
      inversePrimary: Color(0xff93cdf6),
      primaryFixed: Color(0xffc8e6ff),
      onPrimaryFixed: Color(0xff001e2e),
      primaryFixedDim: Color(0xff93cdf6),
      onPrimaryFixedVariant: Color(0xff004c6d),
      secondaryFixed: Color(0xffd2e5f5),
      onSecondaryFixed: Color(0xff0b1d29),
      secondaryFixedDim: Color(0xffb6c9d8),
      onSecondaryFixedVariant: Color(0xff384956),
      tertiaryFixed: Color(0xffe9ddff),
      onTertiaryFixed: Color(0xff1f1635),
      tertiaryFixedDim: Color(0xffcdc0e9),
      onTertiaryFixedVariant: Color(0xff4b4263),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004867),
      surfaceTint: Color(0xff236488),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3e7ba0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff344551),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff657785),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff473e5f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7a6f93),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffdde3ea),
      onSurfaceVariant: Color(0xff3d4449),
      outline: Color(0xff596066),
      outlineVariant: Color(0xff757b82),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f6),
      inversePrimary: Color(0xff93cdf6),
      primaryFixed: Color(0xff3e7ba0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff206285),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff657785),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4d5e6b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7a6f93),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff615779),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002538),
      surfaceTint: Color(0xff236488),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004867),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff122430),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff344551),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff261d3c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff473e5f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdde3ea),
      onSurfaceVariant: Color(0xff1e252a),
      outline: Color(0xff3d4449),
      outlineVariant: Color(0xff3d4449),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffdbefff),
      primaryFixed: Color(0xff004867),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003047),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff344551),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1d2f3b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff473e5f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff302847),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff93cdf6),
      surfaceTint: Color(0xff93cdf6),
      onPrimary: Color(0xff00344c),
      primaryContainer: Color(0xff004c6d),
      onPrimaryContainer: Color(0xffc8e6ff),
      secondary: Color(0xffb6c9d8),
      onSecondary: Color(0xff21323e),
      secondaryContainer: Color(0xff384956),
      onSecondaryContainer: Color(0xffd2e5f5),
      tertiary: Color(0xffcdc0e9),
      onTertiary: Color(0xff342b4b),
      tertiaryContainer: Color(0xff4b4263),
      onTertiaryContainer: Color(0xffe9ddff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff101417),
      onSurface: Color(0xffdfe3e7),
      surfaceVariant: Color(0xff41484d),
      onSurfaceVariant: Color(0xffc1c7ce),
      outline: Color(0xff8b9198),
      outlineVariant: Color(0xff41484d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff236488),
      primaryFixed: Color(0xffc8e6ff),
      onPrimaryFixed: Color(0xff001e2e),
      primaryFixedDim: Color(0xff93cdf6),
      onPrimaryFixedVariant: Color(0xff004c6d),
      secondaryFixed: Color(0xffd2e5f5),
      onSecondaryFixed: Color(0xff0b1d29),
      secondaryFixedDim: Color(0xffb6c9d8),
      onSecondaryFixedVariant: Color(0xff384956),
      tertiaryFixed: Color(0xffe9ddff),
      onTertiaryFixed: Color(0xff1f1635),
      tertiaryFixedDim: Color(0xffcdc0e9),
      onTertiaryFixedVariant: Color(0xff4b4263),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff97d2fb),
      surfaceTint: Color(0xff93cdf6),
      onPrimary: Color(0xff001827),
      primaryContainer: Color(0xff5c97bd),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbbcddd),
      onSecondary: Color(0xff061823),
      secondaryContainer: Color(0xff8193a1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd1c4ed),
      onTertiary: Color(0xff19112f),
      tertiaryContainer: Color(0xff968bb1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff101417),
      onSurface: Color(0xfff8fbff),
      surfaceVariant: Color(0xff41484d),
      onSurfaceVariant: Color(0xffc5cbd2),
      outline: Color(0xff9da4aa),
      outlineVariant: Color(0xff7d848a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff262b2e),
      inversePrimary: Color(0xff004d6f),
      primaryFixed: Color(0xffc8e6ff),
      onPrimaryFixed: Color(0xff00131f),
      primaryFixedDim: Color(0xff93cdf6),
      onPrimaryFixedVariant: Color(0xff003a55),
      secondaryFixed: Color(0xffd2e5f5),
      onSecondaryFixed: Color(0xff02131e),
      secondaryFixedDim: Color(0xffb6c9d8),
      onSecondaryFixedVariant: Color(0xff273844),
      tertiaryFixed: Color(0xffe9ddff),
      onTertiaryFixed: Color(0xff140b2a),
      tertiaryFixedDim: Color(0xffcdc0e9),
      onTertiaryFixedVariant: Color(0xff3a3151),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff8fbff),
      surfaceTint: Color(0xff93cdf6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff97d2fb),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff8fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbbcddd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd1c4ed),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff41484d),
      onSurfaceVariant: Color(0xfff8fbff),
      outline: Color(0xffc5cbd2),
      outlineVariant: Color(0xffc5cbd2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002d43),
      primaryFixed: Color(0xffd1eaff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff97d2fb),
      onPrimaryFixedVariant: Color(0xff001827),
      secondaryFixed: Color(0xffd7e9f9),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbbcddd),
      onSecondaryFixedVariant: Color(0xff061823),
      tertiaryFixed: Color(0xffede2ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd1c4ed),
      onTertiaryFixedVariant: Color(0xff19112f),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}