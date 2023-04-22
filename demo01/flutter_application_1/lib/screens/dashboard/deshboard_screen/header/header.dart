import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../controllers/MenuAppController.dart';
import '../../../../responsive.dart';
import 'search_field.dart';
import 'package:flutter_application_1/screens/dashboard/deshboard_screen/header/profile_card.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDeskTop(context))
          IconButton(
            onPressed: () {
              context.read<MenuAppController>().controlMenu();
            },
            icon: const Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "dashboard",
            style: Theme.of(context)
                .textTheme
                .titleLarge, //titleLarge 替换启用的headline6
          ),
        if (!Responsive.isMobile(context))
          // 通过 Spacer 占据可用空间的比例 默认flex= 1
          Spacer(
            flex: Responsive.isDeskTop(context) ? 2 : 1,
          ),
        // 搜索输入框
        const Expanded(child: SearchField()),
        // 人员选择
        const ProfileCard(),
      ],
    );
  }
}
