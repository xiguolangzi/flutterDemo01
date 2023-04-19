import 'package:flutter/material.dart';
import 'main_screen/size_menu.dart';
import 'package:flutter_application_1/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          // 标体内容 排布居上
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              // 默认 flex = 1 ，占1/6
              child: SizeMeun(),
            ),
            Expanded(
              //占 5/6
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}
