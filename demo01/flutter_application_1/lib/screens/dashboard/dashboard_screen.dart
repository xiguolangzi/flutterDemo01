import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'deshboard_screen/header/header.dart';
import 'deshboard_screen/my_files/my_files.dart';
import 'deshboard_screen/recent_files/recent_files.dart';
import 'deshboard_screen/storage/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            // 顶部
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            // 标体
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 标体 - 左
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      // 标题栏
                      const MyFiles(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(
                          height: defaultPadding,
                        ),
                      // 标体 - 右 - 移动端展示
                      if (Responsive.isMobile(context)) const StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                // 标体 - 右 - 移动端不展示
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
