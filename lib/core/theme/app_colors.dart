import 'package:flutter/material.dart';

class AppColors {
  // Primary colors (暖橘色系主色)
  static const Color primary = Color(0xFFD95D39); // 暖橘色（主色）
  static const Color primaryLight = Color(0xFFFFA07A); // 淺橘色（滑過、強調）
  static const Color primaryDark = Color(0xFF9B3B20); // 深橘色（按下、強烈對比）

  // Secondary colors (柔和棕色系)
  static const Color secondary = Color(0xFF8B5E3C); // 棕褐色
  static const Color secondaryLight = Color(0xFFCBAF93); // 淺棕色
  static const Color secondaryDark = Color(0xFF53351B); // 深棕色

  // Accent & status colors
  static const Color accent = Color(0xFFDAA520); // 金黃色強調
  static const Color success = Color(0xFF4CAF50); // 成功：綠色（保留綠色）
  static const Color warning = Color(0xFFFFB74D); // 警告：淺橘色
  static const Color error = Color(0xFFE53935); // 錯誤：紅色（保留紅色）

  // Light Theme Colors
  static const Color lightBackground = Color(0xFFFDF6F0); // 柔和米白背景
  static const Color lightSurface = Colors.white; // 卡片、面板
  static const Color lightText = Color(0xFF3E2723); // 深棕黑字
  static const Color lightTextSecondary = Color(0xFF6D4C41); // 次要文字
  static const Color lightDivider = Color(0xFFD7CCC8); // 分隔線

  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF3E2723); // 深棕色背景
  static const Color darkSurface = Color(0xFF5D4037); // 卡片、面板
  static const Color darkText = Color(0xFFFFF3E0); // 米白字
  static const Color darkTextSecondary = Color(0xFFBCAAA4); // 次要字
  static const Color darkDivider = Color(0xFF8D6E63); // 分隔線
}
