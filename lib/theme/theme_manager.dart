import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_theme.dart';

/// 커스텀 테마 모드 열거형
enum CustomThemeMode {
  light,
  dark,
  black,
  system,
}

/// 테마 관리자 클래스
///
/// 디자이너 가이드:
/// - 이 클래스는 앱의 테마를 중앙에서 관리합니다
/// - 라이트, 다크, 블랙 테마를 지원합니다
/// - 사용자 선택을 SharedPreferences에 저장합니다
/// - 테마 변경 시 전체 앱에 즉시 반영됩니다
class ThemeManager extends ChangeNotifier {
  static const String _themeKey = 'selected_theme';

  // 현재 선택된 테마
  CustomThemeMode _currentTheme = CustomThemeMode.light;

  // 테마 옵션들
  static const List<ThemeOption> _themeOptions = [
    ThemeOption(
      mode: CustomThemeMode.light,
      name: '라이트',
      description: '밝은 테마',
      icon: Icons.light_mode,
    ),
    ThemeOption(
      mode: CustomThemeMode.dark,
      name: '다크',
      description: '어두운 테마',
      icon: Icons.dark_mode,
    ),
    ThemeOption(
      mode: CustomThemeMode.black,
      name: '블랙',
      description: '검은색 테마',
      icon: Icons.nightlight_round,
    ),
    ThemeOption(
      mode: CustomThemeMode.system,
      name: '시스템',
      description: '시스템 설정 따름',
      icon: Icons.settings_suggest,
    ),
  ];

  ThemeManager() {
    _loadTheme();
  }

  /// 현재 테마 모드
  CustomThemeMode get currentTheme => _currentTheme;

  /// 테마 옵션 목록
  List<ThemeOption> get themeOptions => _themeOptions;

  /// 현재 테마에 따른 ThemeData 반환
  ThemeData get themeData {
    switch (_currentTheme) {
      case CustomThemeMode.light:
        return AppTheme.lightTheme;
      case CustomThemeMode.dark:
        return AppTheme.darkTheme;
      case CustomThemeMode.black:
        return AppTheme.blackTheme;
      case CustomThemeMode.system:
        return AppTheme.lightTheme; // 시스템 테마는 별도 처리
    }
  }

  /// 테마 변경
  Future<void> setTheme(CustomThemeMode theme) async {
    if (_currentTheme == theme) return;

    _currentTheme = theme;
    await _saveTheme();
    notifyListeners();
  }

  /// 테마 이름으로 변경
  Future<void> setThemeByName(String themeName) async {
    final theme = _themeOptions.firstWhere(
      (option) => option.name == themeName,
      orElse: () => _themeOptions.first,
    );
    await setTheme(theme.mode);
  }

  /// 테마 저장
  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, _currentTheme.name);
  }

  /// 테마 로드
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeName = prefs.getString(_themeKey);

    if (themeName != null) {
      switch (themeName) {
        case 'light':
          _currentTheme = ThemeMode.light;
          break;
        case 'dark':
          _currentTheme = ThemeMode.dark;
          break;
        case 'system':
          _currentTheme = ThemeMode.system;
          break;
        default:
          _currentTheme = ThemeMode.light;
      }
    }

    notifyListeners();
  }

  /// 현재 테마 옵션 반환
  ThemeOption get currentThemeOption {
    return _themeOptions.firstWhere(
      (option) => option.mode == _currentTheme,
      orElse: () => _themeOptions.first,
    );
  }
}

/// 테마 옵션 데이터 클래스
class ThemeOption {
  final ThemeMode mode;
  final String name;
  final String description;
  final IconData icon;

  const ThemeOption({
    required this.mode,
    required this.name,
    required this.description,
    required this.icon,
  });
}
