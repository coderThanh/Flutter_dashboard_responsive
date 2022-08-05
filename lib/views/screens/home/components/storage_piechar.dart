import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../models/theme_style_mobdel.dart';

class StorageDetailPieChar extends StatelessWidget {
  const StorageDetailPieChar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> paiChartSelectionDatas = [
      PieChartSectionData(
        color: Theme.of(context).primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: const Color(0xFF26E5FF),
        value: 20,
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        color: const Color(0xFFFFCF26),
        value: 10,
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        color: const Color(0xFFEE2727),
        value: 15,
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 13,
      ),
    ];

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ThemeStyleDark.padding,
        vertical: ThemeStyleDark.padding * 2,
      ),
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: ThemeStyleDark.padding),
                Text(
                  "29.1",
                  style: TextStyle(
                    color: ThemeStyleDark.onSurface,
                    fontWeight: FontWeight.w700,
                    height: 0.5,
                    fontSize: 30,
                  ),
                ),
                const Text("of 128GB"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
