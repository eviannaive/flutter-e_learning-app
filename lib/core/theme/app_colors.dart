import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xFF1976D2); // 深藍色（主色）
  static const Color primaryLight = Color(0xFF63A4FF); // 淺藍（滑過、強調）
  static const Color primaryDark = Color(0xFF004BA0); // 深藍（按下、強烈對比）

  // Secondary colors
  static const Color secondary = Color(0xFFFFA000); // 橘黃色
  static const Color secondaryLight = Color(0xFFFFD149); // 淺橘黃
  static const Color secondaryDark = Color(0xFFC67100); // 深橘黃

  // Accent & status colors
  static const Color accent = Color(0xFF7C4DFF); // 紫色強調
  static const Color success = Color(0xFF43A047); // 成功：綠色
  static const Color warning = Color(0xFFFFA726); // 警告：橘色
  static const Color error = Color(0xFFE53935); // 錯誤：紅色

  // Light Theme Colors
  static const Color lightBackground = Color(0xFFF5F5F5); // 灰白背景
  static const Color lightSurface = Colors.white; // 卡片、面板
  static const Color lightText = Color(0xFF212121); // 深灰黑字
  static const Color lightTextSecondary = Color(0xFF757575); // 次要文字
  static const Color lightDivider = Color(0xFFBDBDBD); // 分隔線

  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF121212); // 幾近黑背景
  static const Color darkSurface = Color(0xFF1E1E1E); // 卡片、面板
  static const Color darkText = Color(0xFFF5F5F5); // 白字
  static const Color darkTextSecondary = Color(0xFFBDBDBD); // 次要字
  static const Color darkDivider = Color(0xFF424242); // 分隔線
}
