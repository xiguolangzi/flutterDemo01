import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../models/MyFiles.dart';
import '../../../../responsive.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
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
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCounts: _size.width < 650 ? 2 : 4,
            childAspectRatios: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(
            childAspectRatios: 1.1,
          ),
          desktop: FileInfoCardGridView(
            childAspectRatios: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView(
      {super.key, this.crossAxisCounts = 4, this.childAspectRatios = 1.4});
  final int crossAxisCounts;
  final double childAspectRatios;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // 禁止滚动
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // 子组件个数
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // 指定列数
        crossAxisCount: crossAxisCounts,
        // 指定行间距
        crossAxisSpacing: defaultPadding,
        // 指定列间距
        mainAxisSpacing: defaultPadding,
        // 子组件的横纵比
        childAspectRatio: childAspectRatios,
      ),
      // 回调函数 - 创建子组件
      itemBuilder: (context, index) {
        return FileInfoCard(
          info: demoMyFiles[index],
        );
      },
    );
  }
}
