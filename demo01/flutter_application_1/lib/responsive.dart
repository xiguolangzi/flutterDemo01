import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  // 判断屏幕尺寸 后面有用到
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDeskTop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // 如果屏幕尺寸宽度 大于1100 ，则确认为桌面应用
    if (size.width >= 1100) {
      return desktop;
      // 如果屏幕尺寸宽度 大于850 ，则确认为平板应用
    } else if (size.width >= 850) {
      return tablet;
      // 否则 ，则确认为移动应用
    } else {
      return mobile;
    }
  }
}
