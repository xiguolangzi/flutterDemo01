import 'package:flutter/material.dart';
import 'search_field.dart';
import 'package:flutter_application_1/screens/dashboard/deshboard_screen/header/profile_card.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "dashboard",
          style: Theme.of(context)
              .textTheme
              .titleLarge, //titleLarge 替换启用的headline6
        ),
        // 通过 Spacer 占据可用空间的比例 默认flex= 1
        const Spacer(
          flex: 2,
        ),
        // 搜索输入框
        const Expanded(child: SearchField()),
        // 人员选择
        const ProfileCard(),
      ],
    );
  }
}
