import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightWidget(70),
          SizedBox(
            width: double.infinity,
            height: 237.h,
            child: BarChart(
              BarChartData(
                titlesData: titlesData,
                borderData: borderData,
                barGroups: barGroups,
                gridData: const FlGridData(show: true),
                alignment: BarChartAlignment.spaceAround,
                maxY: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = switch (value.toInt()) {
      0 => 'jan',
      1 => 'feb',
      2 => 'mar',
      3 => 'apr',
      4 => 'may',
      5 => 'St',
      6 => 'Sn',
      _ => '',
    };
    return SideTitleWidget(
      space: 4,
      axisSide: AxisSide.top,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 2,
            getTitlesWidget: (value, meta) => Text("${value.toInt()}k"),
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups => [
        for (int i = 0; i < 5; i++)
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                  toY: 6,
                  color: AppColors.primaryColor,
                  width: 12.w,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.r),
                      topLeft: Radius.circular(8.r))),
              BarChartRodData(
                  toY: 4,
                  color: Color(0xff303A6E),
                  width: 12.w,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.r),
                      topLeft: Radius.circular(8.r))),
            ],
          ),
      ];
}
