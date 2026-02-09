import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract final class AppTheme {
  static ThemeData get dark {
    final textTheme = GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ).copyWith(
      bodySmall: GoogleFonts.inter(color: AppColors.textSecondary),
      bodyMedium: GoogleFonts.inter(color: AppColors.textPrimary),
      bodyLarge: GoogleFonts.inter(color: AppColors.textPrimary),
      labelSmall: GoogleFonts.inter(color: AppColors.textMuted),
      labelMedium: GoogleFonts.inter(color: AppColors.textSecondary),
      labelLarge: GoogleFonts.inter(color: AppColors.textPrimary),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.deepNavy,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.softTeal,
        secondary: AppColors.lavender,
        surface: AppColors.darkBlueSurface,
        onPrimary: AppColors.deepNavy,
        onSecondary: AppColors.deepNavy,
        onSurface: AppColors.textPrimary,
      ),
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        iconTheme: const IconThemeData(color: AppColors.softTeal),
      ),
      cardTheme: CardThemeData(
        color: AppColors.darkBlueSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: AppColors.softTeal.withValues(alpha: 0.1),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.softTeal,
          foregroundColor: AppColors.deepNavy,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.softTeal,
        inactiveTrackColor: AppColors.softTeal.withValues(alpha: 0.2),
        thumbColor: AppColors.softTeal,
        overlayColor: AppColors.softTeal.withValues(alpha: 0.1),
        trackHeight: 4,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.softTeal,
        ),
      ),
    );
  }
}
