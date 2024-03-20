import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff7b4e80),
      surfaceTint: Color(0xff7b4e80),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd5ff),
      onPrimaryContainer: Color(0xff310938),
      secondary: Color(0xff6b586b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff4dbf2),
      onSecondaryContainer: Color(0xff251726),
      tertiary: Color(0xff8f4a51),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdadb),
      onTertiaryContainer: Color(0xff3b0711),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff7fa),
      onBackground: Color(0xff1f1a1f),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff1f1a1f),
      surfaceVariant: Color(0xffecdfe9),
      onSurfaceVariant: Color(0xff4d444c),
      outline: Color(0xff7e747d),
      outlineVariant: Color(0xffd0c3cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352f34),
      inverseOnSurface: Color(0xfff9eef5),
      inversePrimary: Color(0xffeab5ed),
      primaryFixed: Color(0xffffd5ff),
      onPrimaryFixed: Color(0xff310938),
      primaryFixedDim: Color(0xffeab5ed),
      onPrimaryFixedVariant: Color(0xff613767),
      secondaryFixed: Color(0xfff4dbf2),
      onSecondaryFixed: Color(0xff251726),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff524153),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff3b0711),
      tertiaryFixedDim: Color(0xffffb2b8),
      onTertiaryFixedVariant: Color(0xff72333a),
      surfaceDim: Color(0xffe2d7de),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0f8),
      surfaceContainer: Color(0xfff6ebf2),
      surfaceContainerHigh: Color(0xfff0e5ec),
      surfaceContainerHighest: Color(0xffeadfe6),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff5d3362),
      surfaceTint: Color(0xff7b4e80),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff936497),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4e3d4f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff826e82),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6d2f37),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa95f66),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff7fa),
      onBackground: Color(0xff1f1a1f),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff1f1a1f),
      surfaceVariant: Color(0xffecdfe9),
      onSurfaceVariant: Color(0xff494048),
      outline: Color(0xff665c64),
      outlineVariant: Color(0xff827880),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352f34),
      inverseOnSurface: Color(0xfff9eef5),
      inversePrimary: Color(0xffeab5ed),
      primaryFixed: Color(0xff936497),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff784c7d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff826e82),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff695669),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa95f66),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff8c474f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe2d7de),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0f8),
      surfaceContainer: Color(0xfff6ebf2),
      surfaceContainerHigh: Color(0xfff0e5ec),
      surfaceContainerHighest: Color(0xffeadfe6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff38113f),
      surfaceTint: Color(0xff7b4e80),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5d3362),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2c1d2d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4e3d4f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff440e18),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6d2f37),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff7fa),
      onBackground: Color(0xff1f1a1f),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffecdfe9),
      onSurfaceVariant: Color(0xff292229),
      outline: Color(0xff494048),
      outlineVariant: Color(0xff494048),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352f34),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe4fd),
      primaryFixed: Color(0xff5d3362),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff441c4b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4e3d4f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff372738),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6d2f37),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff511922),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe2d7de),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0f8),
      surfaceContainer: Color(0xfff6ebf2),
      surfaceContainerHigh: Color(0xfff0e5ec),
      surfaceContainerHighest: Color(0xffeadfe6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeab5ed),
      surfaceTint: Color(0xffeab5ed),
      onPrimary: Color(0xff48204f),
      primaryContainer: Color(0xff613767),
      onPrimaryContainer: Color(0xffffd5ff),
      secondary: Color(0xffd7bfd5),
      onSecondary: Color(0xff3b2b3c),
      secondaryContainer: Color(0xff524153),
      onSecondaryContainer: Color(0xfff4dbf2),
      tertiary: Color(0xffffb2b8),
      onTertiary: Color(0xff561d25),
      tertiaryContainer: Color(0xff72333a),
      onTertiaryContainer: Color(0xffffdadb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff171217),
      onBackground: Color(0xffeadfe6),
      surface: Color(0xff171217),
      onSurface: Color(0xffeadfe6),
      surfaceVariant: Color(0xff4d444c),
      onSurfaceVariant: Color(0xffd0c3cc),
      outline: Color(0xff998d96),
      outlineVariant: Color(0xff4d444c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe6),
      inverseOnSurface: Color(0xff352f34),
      inversePrimary: Color(0xff7b4e80),
      primaryFixed: Color(0xffffd5ff),
      onPrimaryFixed: Color(0xff310938),
      primaryFixedDim: Color(0xffeab5ed),
      onPrimaryFixedVariant: Color(0xff613767),
      secondaryFixed: Color(0xfff4dbf2),
      onSecondaryFixed: Color(0xff251726),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff524153),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff3b0711),
      tertiaryFixedDim: Color(0xffffb2b8),
      onTertiaryFixedVariant: Color(0xff72333a),
      surfaceDim: Color(0xff171217),
      surfaceBright: Color(0xff3e373d),
      surfaceContainerLowest: Color(0xff110d11),
      surfaceContainerLow: Color(0xff1f1a1f),
      surfaceContainer: Color(0xff231e23),
      surfaceContainerHigh: Color(0xff2e282d),
      surfaceContainerHighest: Color(0xff393338),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffefb9f2),
      surfaceTint: Color(0xffeab5ed),
      onPrimary: Color(0xff2a0432),
      primaryContainer: Color(0xffb180b5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffdbc4d9),
      onSecondary: Color(0xff1f1121),
      secondaryContainer: Color(0xff9f8a9e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb8be),
      onTertiary: Color(0xff34030c),
      tertiaryContainer: Color(0xffca7a82),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff171217),
      onBackground: Color(0xffeadfe6),
      surface: Color(0xff171217),
      onSurface: Color(0xfffff9fa),
      surfaceVariant: Color(0xff4d444c),
      onSurfaceVariant: Color(0xffd4c7d1),
      outline: Color(0xffab9fa9),
      outlineVariant: Color(0xff8b8089),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe6),
      inverseOnSurface: Color(0xff2e282d),
      inversePrimary: Color(0xff623868),
      primaryFixed: Color(0xffffd5ff),
      onPrimaryFixed: Color(0xff24002c),
      primaryFixedDim: Color(0xffeab5ed),
      onPrimaryFixedVariant: Color(0xff4f2655),
      secondaryFixed: Color(0xfff4dbf2),
      onSecondaryFixed: Color(0xff1a0c1b),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff413142),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff2c0008),
      tertiaryFixedDim: Color(0xffffb2b8),
      onTertiaryFixedVariant: Color(0xff5e222a),
      surfaceDim: Color(0xff171217),
      surfaceBright: Color(0xff3e373d),
      surfaceContainerLowest: Color(0xff110d11),
      surfaceContainerLow: Color(0xff1f1a1f),
      surfaceContainer: Color(0xff231e23),
      surfaceContainerHigh: Color(0xff2e282d),
      surfaceContainerHighest: Color(0xff393338),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9fa),
      surfaceTint: Color(0xffeab5ed),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffefb9f2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9fa),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffdbc4d9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb8be),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff171217),
      onBackground: Color(0xffeadfe6),
      surface: Color(0xff171217),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff4d444c),
      onSurfaceVariant: Color(0xfffff9fa),
      outline: Color(0xffd4c7d1),
      outlineVariant: Color(0xffd4c7d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe6),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff411a48),
      primaryFixed: Color(0xffffdcfe),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffefb9f2),
      onPrimaryFixedVariant: Color(0xff2a0432),
      secondaryFixed: Color(0xfff8dff6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffdbc4d9),
      onSecondaryFixedVariant: Color(0xff1f1121),
      tertiaryFixed: Color(0xffffdfe1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb8be),
      onTertiaryFixedVariant: Color(0xff34030c),
      surfaceDim: Color(0xff171217),
      surfaceBright: Color(0xff3e373d),
      surfaceContainerLowest: Color(0xff110d11),
      surfaceContainerLow: Color(0xff1f1a1f),
      surfaceContainer: Color(0xff231e23),
      surfaceContainerHigh: Color(0xff2e282d),
      surfaceContainerHighest: Color(0xff393338),
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

  List<ExtendedColor> get extendedColors => [];
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
