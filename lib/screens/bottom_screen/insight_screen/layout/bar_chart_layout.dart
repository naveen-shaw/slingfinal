import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../config.dart';

//insight column BarChart layout
class InsightBarChartLayout extends StatelessWidget {
  const InsightBarChartLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InsightProvider>(builder: (context1, insightCtrl, child) {
      return Column(children: [
        //insight BarChart Buttons Layout
        InsightWidgets().insightBarChartButtonLayout(context, insightCtrl),
        SizedBox(
            height: Sizes.s300,
            child: SfCartesianChart(
                plotAreaBackgroundColor: Colors.transparent,
                borderColor: Colors.transparent,
                borderWidth: 0,
                margin: EdgeInsets.only(top: Sizes.s10),
                enableSideBySideSeriesPlacement: false,
                plotAreaBorderWidth: 0,
                primaryXAxis: const CategoryAxis(
                    axisLine: AxisLine(color: Colors.transparent, width: 0),
                    borderWidth: 0,
                    borderColor: Colors.transparent,
                    majorGridLines: MajorGridLines(width: 0),
                    majorTickLines: MajorTickLines(width: 0)),
                primaryYAxis: const NumericAxis(
                    isVisible: true,
                    labelFormat: "{value}k",
                    minimum: -100,
                    maximum: 100,
                    interval: 50,
                    borderWidth: 0,
                    axisLine: AxisLine(color: Colors.transparent, width: 0),
                    majorGridLines:
                        MajorGridLines(width: 0.8, dashArray: [5, 5]),
                    majorTickLines:
                        MajorTickLines(width: 0, color: Colors.transparent)),
                series: <CartesianSeries>[
                  ColumnSeries<ChartColumnData, String>(
                      dataSource: insightCtrl.barChartData,
                      xValueMapper: (ChartColumnData data, _) => data.x,
                      yValueMapper: (ChartColumnData data, _) => data.y,
                      width: 0.1,
                      color: appColor(context).appTheme.barChartLight,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  ColumnSeries<ChartColumnData, String>(
                      dataSource: insightCtrl.barChartData,
                      xValueMapper: (ChartColumnData data, _) => data.x,
                      yValueMapper: (ChartColumnData data, _) => data.y1,
                      width: 0.1,
                      color: appColor(context).appTheme.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(20)))
                ]))
      ])
          .padding(bottom: Sizes.s25, horizontal: Sizes.s10)
          .lastPaidExtension(context)
          .padding(top: Sizes.s20);
    });
  }
}
