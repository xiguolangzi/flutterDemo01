import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      // Stack 起到位置重叠效果 配合 Positioned 使用
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sections: pieChartSectionDatas,
              // 偏移度
              startDegreeOffset: -99.0,
              // 数据间距
              sectionsSpace: 2.0,
              // 中心空间半径
              centerSpaceRadius: 70.0,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "29.1",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium! //headlineMedium 替换启用的headline4
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                const Text(
                  "of 128GB",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionDatas = [
  PieChartSectionData(
    value: 25,
    color: primaryColor,
    showTitle: false,
    radius: 25.0,
    // title: "数值展示",
    // titleStyle:
    //     const TextStyle(color: Colors.red),
    // borderSide: const BorderSide(
    //     width: 1, color: Colors.white),
    //标题位置  0-1 0接近内边，1接近外边
    // titlePositionPercentageOffset: 0.5,
    // 中心小部件
    // badgeWidget: const Text(
    //   "29.3中心",
    //   style: TextStyle(color: Colors.white),
    // ),
    // 中心小部件位置 0-1 0接近内边，1接近外边
    // badgePositionPercentageOffset: 1.5,
  ),
  PieChartSectionData(
    value: 20,
    color: const Color(0xFF26E5FF),
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    value: 10,
    color: const Color(0xFFFFCF26),
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    value: 15,
    color: const Color(0xFFEE2727),
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    value: 25,
    color: primaryColor.withOpacity(0.1),
    showTitle: false,
    radius: 13,
  ),
];
