import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../config.dart';

class RevenueChartLayout extends StatelessWidget {
  const RevenueChartLayout({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      ChartData('DOGE', 15, appColor(context).appTheme.red),
      ChartData('USDT', 8, appColor(context).appTheme.green),
      ChartData('BTC', 45, appColor(context).appTheme.yellow),
      ChartData('ETH', 34, appColor(context).appTheme.primary)
    ];
    return Expanded(
        flex: 5,
        child: SizedBox(
            height: Sizes.s145,
            child: SfCircularChart(margin: EdgeInsets.zero, annotations: [
              CircularChartAnnotation(
                  widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    TextWidgetCommon(
                        text:
                            "${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.revenueAmount)).toStringAsFixed(0)}",
                        style: AppCss.latoBold18),
                    TextWidgetCommon(
                        text: appFonts.revenue,
                        style: TextStyle(
                            color: appColor(context).appTheme.lightText))
                  ]))
            ],
                series: <CircularSeries>[
              // Renders doughnut chart
              DoughnutSeries<ChartData, String>(
                  radius: '90%',
                  cornerStyle: CornerStyle.bothCurve,
                  innerRadius: '80%',
                  explode: true,
                  explodeAll: true,
                  explodeOffset: "3%",
                  dataSource: chartData,
                  pointColorMapper: (ChartData data, _) => data.color,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ])));
  }
}
