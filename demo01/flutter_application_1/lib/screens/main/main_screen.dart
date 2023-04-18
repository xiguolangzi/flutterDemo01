import 'package:flutter/material.dart';
import 'size_menu.dart';
import 'package:flutter_application_1/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
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
