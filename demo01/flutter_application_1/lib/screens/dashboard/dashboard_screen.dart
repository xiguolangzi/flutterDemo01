import 'package:flutter/material.dart';
import '../../constants.dart';
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
                    children: const [
                      // 标题栏
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFiles(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                // 标体 - 右
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    decoration: const BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const StorageDetails(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
