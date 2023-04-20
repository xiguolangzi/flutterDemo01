import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';
import '../../../../models/MyFiles.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          // 子组件个数
          itemCount: demoMyFiles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // 指定列数
            crossAxisCount: 4,
            // 指定列间距
            crossAxisSpacing: defaultPadding,
            // 子组件的横纵比
            childAspectRatio: 1.3,
          ),
          // 回调函数 - 创建子组件
          itemBuilder: (context, index) {
            return FileInfoCard(
              info: demoMyFiles[index],
            );
          },
        )
      ],
    );
  }
}
