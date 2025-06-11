import 'package:mpay/config.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// insight category chart layout
class CategoriesChartLayout extends StatelessWidget {
  final InsightProvider insightCtrl;

  const CategoriesChartLayout(this.insightCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
            text: appFonts.categories,
            style: AppCss.latoBold18
                .textColor(appColor(context).appTheme.darkText)),
        SizedBox(
                height: Sizes.s150,
                child: Stack(children: [
                  Image.asset(eImageAssets.categoriesChart)
                      .padding(top: Sizes.s10, horizontal: Sizes.s70),
                  SfCircularChart(
                      margin: EdgeInsets.only(top: Sizes.s50),
                      borderWidth: 0,
                      annotations: [
                        CircularChartAnnotation(
                            widget: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                              TextWidgetCommon(
                                  text: appFonts.totalSpent,
                                  style: AppCss.latoLight14.textColor(
                                      appColor(context).appTheme.lightText)),
                              VSpace(Sizes.s5),
                              TextWidgetCommon(
                                  text:
                                      "${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.totalSpentMoney)).toStringAsFixed(2)}",
                                  style: AppCss.latoSemiBold20.textColor(
                                      appColor(context).appTheme.darkText))
                            ]))
                      ],
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                            explodeOffset: '3%',
                            radius: "160%",
                            dataSource: insightCtrl.chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            cornerStyle: CornerStyle.bothCurve,
                            startAngle: 245,
                            innerRadius: "92%",
                            explodeAll: true,
                            pointColorMapper: (datum, index) => datum.color,
                            explode: true,
                            endAngle: 118)
                      ])
                ]))
            .padding(vertical: Sizes.s15)
            .cryptoExtention(context)
            .padding(top: Sizes.s18, bottom: Sizes.s25)
      ],
    );
  }
}
