import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/MenuAppController.dart';
import '../../responsive.dart';
import 'main_screen/size_menu.dart';
import 'package:flutter_application_1/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SizeMeun(),
      body: SafeArea(
        child: Row(
          // 表体内容 - 排布居上
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizeMeun 只支持桌面端
            if (Responsive.isDeskTop(context))
              // 左边的抽屉菜单
              const Expanded(
                // 默认 flex = 1 ，占1/6
                child: SizeMeun(),
              ),
            // 右边的表体
            const Expanded(
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
