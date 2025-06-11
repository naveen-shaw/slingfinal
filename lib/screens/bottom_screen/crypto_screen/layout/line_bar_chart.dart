import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../config.dart';

//My portfolio LineBar chart layout
class LineBarChart extends StatelessWidget {
  final CryptoCoinDetailsProvider coinCtrl;

  const LineBarChart(this.coinCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: appColor(context).appTheme.lightBGColor,
        height: Sizes.s200,
        child: SfCartesianChart(
            margin: const EdgeInsets.all(0),
            annotations: [
              CartesianChartAnnotation(
                  widget: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                    Image.asset(eImageAssets.chartLines),
                    Row(
                            children: coinCtrl.monthsDate
                                .map((e) => TextWidgetCommon(
                                        text: e,
                                        style: AppCss.latoLight13.textColor(
                                            appColor(context).appTheme.lightText))
                                    .padding(horizontal: Sizes.s3))
                                .toList())
                        .padding(top: Sizes.s10,horizontal: Sizes.s5)
                  ]),
                  x: MediaQuery.of(context).size.width/1.9,
                  y: MediaQuery.of(context).size.height/3.3)
            ],
            onTooltipRender: (tooltipArgs) => TooltipArgs([55]),
            trackballBehavior: TrackballBehavior(
                enable: true,
                tooltipSettings:
                    const InteractiveTooltip(enable: true, arrowLength: 30),
                markerSettings: TrackballMarkerSettings(
                    height: 10,
                    width: 10,
                    markerVisibility: TrackballVisibilityMode.visible,
                    borderColor: appColor(context).appTheme.chartGreen,
                    borderWidth: 2,
                    color: appColor(context).appTheme.chartGreen),
                activationMode: ActivationMode.singleTap,
                builder: (context, trackballDetails) {
                  return TextWidgetCommon(
                      text:
                          "${trackballDetails.groupingModeInfo!.points[0].high}",
                      textAlign: TextAlign.left,
                      style: AppCss.latoMedium10
                          .textColor(appColor(context).appTheme.darkText));
                },
                tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
                lineType: TrackballLineType.vertical,
                hideDelay: 2,
                shouldAlwaysShow: false,
                lineColor: Colors.grey.withOpacity(0.5),
                tooltipAlignment: ChartAlignment.center,
                lineDashArray: [3, 3]),
            plotAreaBorderWidth: 0,
            primaryXAxis: const DateTimeAxis(isVisible: false),
            primaryYAxis: const NumericAxis(isVisible: false),
            series: [
              SplineRangeAreaSeries(
                  borderColor: appColor(context).appTheme.chartGreen,
                  borderWidth: 1,
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(17, 166, 121, 0.4),
                    Color.fromRGBO(17, 166, 121, 0),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  dataSource: coinCtrl.chartData,
                  enableTooltip: false,
                  xValueMapper: (dynamic sales, _) => sales.x,
                  lowValueMapper: (dynamic sales, _) => sales.low,
                  highValueMapper: (dynamic sales, _) => sales.high)
            ]));
  }
}
