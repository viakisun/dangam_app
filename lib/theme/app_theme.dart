import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_typography.dart';
import 'app_spacing.dart';
import 'app_icons.dart';

/// 앱의 전체 테마를 관리하는 클래스
///
/// 디자이너 가이드:
/// - 이 클래스는 앱의 모든 디자인 요소를 통합 관리합니다
/// - 색상, 타이포그래피, 간격이 모두 여기서 정의됩니다
/// - 테마 변경 시 이 클래스만 수정하면 전체 앱에 반영됩니다
/// - 다크 모드 지원을 위한 구조도 포함되어 있습니다
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  // ============================================================================
  // 아이콘 테마 (Icon Theme)
  // ============================================================================

  /// 아이콘 테마 설정
  /// 사용처: 앱 전체의 아이콘 크기와 색상
  static const IconThemeData iconTheme = IconThemeData(
    size: AppSpacing.iconMedium,
    color: AppColors.grey,
  );

  /// 작은 아이콘 테마
  /// 사용처: 작은 버튼, 작은 요소
  static const IconThemeData iconThemeSmall = IconThemeData(
    size: AppSpacing.iconSmall,
    color: AppColors.grey,
  );

  /// 큰 아이콘 테마
  /// 사용처: 중요한 아이콘, 버튼
  static const IconThemeData iconThemeLarge = IconThemeData(
    size: AppSpacing.iconLarge,
    color: AppColors.grey,
  );

  /// 거대한 아이콘 테마
  /// 사용처: 매우 중요한 요소, 아바타
  static const IconThemeData iconThemeHuge = IconThemeData(
    size: AppSpacing.iconHuge,
    color: AppColors.primary,
  );

  // ============================================================================
  // 라이트 테마 (Light Theme)
  // ============================================================================

  /// 라이트 테마 설정
  /// 사용처: 앱의 기본 테마
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // 색상 스키마
      colorScheme: _lightColorScheme,

      // 텍스트 테마
      textTheme: _lightTextTheme,

      // 아이콘 테마
      iconTheme: iconTheme,

      // 앱바 테마
      appBarTheme: _appBarTheme,

      // 카드 테마
      cardTheme: _cardTheme,

      // 버튼 테마
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,

      // 입력 필드 테마
      inputDecorationTheme: _inputDecorationTheme,

      // 하단 네비게이션 테마
      bottomNavigationBarTheme: _bottomNavigationBarTheme,

      // 슬라이더 테마
      sliderTheme: _sliderTheme,

      // 체크박스 테마
      checkboxTheme: _checkboxTheme,

      // 스위치 테마
      switchTheme: _switchTheme,

      // 다이얼로그 테마
      dialogTheme: _dialogTheme,

      // 스캐폴드 테마
      scaffoldBackgroundColor: AppColors.background,
    );
  }

  // ============================================================================
  // 다크 테마 (Dark Theme)
  // ============================================================================

  /// 다크 테마 설정
  /// 사용처: 다크 모드 지원
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // 색상 스키마
      colorScheme: _darkColorScheme,

      // 텍스트 테마
      textTheme: _darkTextTheme,

      // 앱바 테마
      appBarTheme: _appBarTheme.copyWith(
        backgroundColor: AppColors.darkAccent,
        foregroundColor: AppColors.white,
      ),

      // 카드 테마
      cardTheme: _cardTheme.copyWith(
        color: AppColors.darkAccent,
      ),

      // 버튼 테마
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,

      // 입력 필드 테마
      inputDecorationTheme: _inputDecorationTheme.copyWith(
        fillColor: AppColors.darkAccent,
        hintStyle: AppTypography.bodyMedium.copyWith(
          color: AppColors.grey,
        ),
      ),

      // 하단 네비게이션 테마
      bottomNavigationBarTheme: _bottomNavigationBarTheme.copyWith(
        backgroundColor: AppColors.darkAccent,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
      ),

      // 슬라이더 테마
      sliderTheme: _sliderTheme,

      // 체크박스 테마
      checkboxTheme: _checkboxTheme,

      // 스위치 테마
      switchTheme: _switchTheme,

      // 다이얼로그 테마
      dialogTheme: _dialogTheme.copyWith(
        backgroundColor: AppColors.darkAccent,
      ),

      // 스캐폴드 테마
      scaffoldBackgroundColor: AppColors.black,
    );
  }

  // ============================================================================
  // 블랙 테마 (Black Theme)
  // ============================================================================

  /// 블랙 테마 설정
  /// 사용처: 검은색 배경의 극도로 어두운 테마
  static ThemeData get blackTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // 색상 스키마
      colorScheme: _blackColorScheme,

      // 텍스트 테마
      textTheme: _blackTextTheme,

      // 앱바 테마
      appBarTheme: _appBarTheme.copyWith(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
      ),

      // 카드 테마
      cardTheme: _cardTheme.copyWith(
        color: AppColors.darkAccent,
      ),

      // 버튼 테마
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,

      // 입력 필드 테마
      inputDecorationTheme: _inputDecorationTheme.copyWith(
        fillColor: AppColors.darkAccent,
        hintStyle: AppTypography.bodyMedium.copyWith(
          color: AppColors.grey,
        ),
      ),

      // 하단 네비게이션 테마
      bottomNavigationBarTheme: _bottomNavigationBarTheme.copyWith(
        backgroundColor: AppColors.black,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
      ),

      // 슬라이더 테마
      sliderTheme: _sliderTheme,

      // 체크박스 테마
      checkboxTheme: _checkboxTheme,

      // 스위치 테마
      switchTheme: _switchTheme,

      // 다이얼로그 테마
      dialogTheme: _dialogTheme.copyWith(
        backgroundColor: AppColors.darkAccent,
      ),

      // 스캐폴드 테마
      scaffoldBackgroundColor: AppColors.black,
    );
  }

  // ============================================================================
  // 색상 스키마 (Color Schemes)
  // ============================================================================

  /// 라이트 모드 색상 스키마
  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.secondary,
    onSecondary: AppColors.white,
    tertiary: AppColors.darkAccent,
    onTertiary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.white,
    surface: AppColors.background,
    onSurface: AppColors.darkAccent,
    surfaceContainerHighest: AppColors.white,
    onSurfaceVariant: AppColors.grey,
    outline: AppColors.divider,
    shadow: AppColors.shadowLight,
  );

  /// 다크 모드 색상 스키마
  static const ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.secondary,
    onSecondary: AppColors.white,
    tertiary: AppColors.darkAccent,
    onTertiary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.white,
    surface: AppColors.black,
    onSurface: AppColors.white,
    surfaceContainerHighest: AppColors.darkAccent,
    onSurfaceVariant: AppColors.grey,
    outline: AppColors.divider,
    shadow: AppColors.shadowLight,
  );

  /// 블랙 모드 색상 스키마
  static const ColorScheme _blackColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.secondary,
    onSecondary: AppColors.white,
    tertiary: AppColors.darkAccent,
    onTertiary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.white,
    surface: AppColors.black,
    onSurface: AppColors.white,
    surfaceContainerHighest: AppColors.darkAccent,
    onSurfaceVariant: AppColors.grey,
    outline: AppColors.divider,
    shadow: AppColors.shadowLight,
  );

  // ============================================================================
  // 텍스트 테마 (Text Themes)
  // ============================================================================

  /// 라이트 모드 텍스트 테마
  static TextTheme get _lightTextTheme {
    return GoogleFonts.interTextTheme().copyWith(
      displayLarge:
          AppTypography.displayLarge.copyWith(color: AppColors.darkAccent),
      displayMedium:
          AppTypography.displayMedium.copyWith(color: AppColors.darkAccent),
      displaySmall:
          AppTypography.displaySmall.copyWith(color: AppColors.darkAccent),
      headlineLarge:
          AppTypography.headlineLarge.copyWith(color: AppColors.darkAccent),
      headlineMedium:
          AppTypography.headlineMedium.copyWith(color: AppColors.darkAccent),
      headlineSmall:
          AppTypography.headlineSmall.copyWith(color: AppColors.darkAccent),
      titleLarge:
          AppTypography.titleLarge.copyWith(color: AppColors.darkAccent),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.grey),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.grey),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.darkAccent),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.grey),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.grey),
      labelLarge:
          AppTypography.labelLarge.copyWith(color: AppColors.darkAccent),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.grey),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.grey),
    );
  }

  /// 다크 모드 텍스트 테마
  static TextTheme get _darkTextTheme {
    return GoogleFonts.interTextTheme().copyWith(
      displayLarge: AppTypography.displayLarge.copyWith(color: AppColors.white),
      displayMedium:
          AppTypography.displayMedium.copyWith(color: AppColors.white),
      displaySmall: AppTypography.displaySmall.copyWith(color: AppColors.white),
      headlineLarge:
          AppTypography.headlineLarge.copyWith(color: AppColors.white),
      headlineMedium:
          AppTypography.headlineMedium.copyWith(color: AppColors.white),
      headlineSmall:
          AppTypography.headlineSmall.copyWith(color: AppColors.white),
      titleLarge: AppTypography.titleLarge.copyWith(color: AppColors.white),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.grey),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.grey),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.white),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.grey),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.grey),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.white),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.grey),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.grey),
    );
  }

  /// 블랙 모드 텍스트 테마
  static TextTheme get _blackTextTheme {
    return GoogleFonts.interTextTheme().copyWith(
      displayLarge: AppTypography.displayLarge.copyWith(color: AppColors.white),
      displayMedium:
          AppTypography.displayMedium.copyWith(color: AppColors.white),
      displaySmall: AppTypography.displaySmall.copyWith(color: AppColors.white),
      headlineLarge:
          AppTypography.headlineLarge.copyWith(color: AppColors.white),
      headlineMedium:
          AppTypography.headlineMedium.copyWith(color: AppColors.white),
      headlineSmall:
          AppTypography.headlineSmall.copyWith(color: AppColors.white),
      titleLarge: AppTypography.titleLarge.copyWith(color: AppColors.white),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.grey),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.grey),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.white),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.grey),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.grey),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.white),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.grey),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.grey),
    );
  }

  // ============================================================================
  // 컴포넌트 테마 (Component Themes)
  // ============================================================================

  /// 앱바 테마
  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.darkAccent,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.darkAccent,
    ),
  );

  /// 카드 테마
  static const CardThemeData _cardTheme = CardThemeData(
    color: AppColors.white,
    elevation: 2,
    shadowColor: AppColors.shadowLight,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusMedium)),
    ),
    margin: EdgeInsets.all(AppSpacing.cardMargin),
  );

  /// Elevated 버튼 테마
  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 2,
        shadowColor: AppColors.shadowMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.buttonPaddingHorizontal,
          vertical: AppSpacing.buttonPaddingVertical,
        ),
        textStyle: AppTypography.button,
      ),
    );
  }

  /// Text 버튼 테마
  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.buttonPaddingHorizontal,
          vertical: AppSpacing.buttonPaddingVertical,
        ),
        textStyle: AppTypography.button,
      ),
    );
  }

  /// Outlined 버튼 테마
  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.buttonPaddingHorizontal,
          vertical: AppSpacing.buttonPaddingVertical,
        ),
        textStyle: AppTypography.button,
      ),
    );
  }

  /// 입력 필드 테마
  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        borderSide: const BorderSide(color: AppColors.divider),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        borderSide: const BorderSide(color: AppColors.divider),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        borderSide: const BorderSide(color: AppColors.error),
      ),
      contentPadding: const EdgeInsets.all(AppSpacing.inputPadding),
      hintStyle: AppTypography.bodyMedium.copyWith(color: AppColors.grey),
    );
  }

  /// 하단 네비게이션 테마
  static const BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.grey,
    type: BottomNavigationBarType.fixed,
    elevation: 8,
    selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
  );

  /// 슬라이더 테마
  static SliderThemeData get _sliderTheme {
    return SliderThemeData(
      activeTrackColor: AppColors.primary,
      inactiveTrackColor: AppColors.primaryLightest,
      thumbColor: AppColors.primary,
      overlayColor: AppColors.primaryLighter,
      valueIndicatorColor: AppColors.primary,
      valueIndicatorTextStyle:
          AppTypography.labelSmall.copyWith(color: AppColors.white),
    );
  }

  /// 체크박스 테마
  static CheckboxThemeData get _checkboxTheme {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return AppColors.white;
      }),
      checkColor: WidgetStateProperty.all(AppColors.white),
      side: const BorderSide(color: AppColors.divider),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusSmall),
      ),
    );
  }

  /// 스위치 테마
  static SwitchThemeData get _switchTheme {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return AppColors.grey;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primaryLighter;
        }
        return AppColors.divider;
      }),
    );
  }

  /// 다이얼로그 테마
  static const DialogThemeData _dialogTheme = DialogThemeData(
    backgroundColor: AppColors.white,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusLarge)),
    ),
  );
}
