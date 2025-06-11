import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../config.dart';

class CandleStickChart extends StatelessWidget {
  final CryptoProvider cryptoCtrl;

  const CandleStickChart(this.cryptoCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      //crypto chart buttons layout
      ChartButtonsLayout().chartButtons(cryptoCtrl, context),
      SizedBox(
          height: Sizes.s300,
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                  axisLine:
                      AxisLine(color: appColor(context).appTheme.dividerColor),
                  majorGridLines: MajorGridLines(
                      width: 0, color: appColor(context).appTheme.trans)),
              primaryYAxis: NumericAxis(
                  axisLine:
                      AxisLine(color: appColor(context).appTheme.dividerColor),
                  majorGridLines: const MajorGridLines(dashArray: [5, 5]),
                  labelFormat: '{value}k'),
              series: <CartesianSeries>[
                CandleSeries<CandleData, String>(
                    dataSource: cryptoCtrl.candleDataList,
                    enableSolidCandles: true,
                    xValueMapper: (CandleData data, _) => data.day,
                    lowValueMapper: (CandleData data, _) => data.low,
                    highValueMapper: (CandleData data, _) => data.high,
                    openValueMapper: (CandleData data, _) => data.open,
                    closeValueMapper: (CandleData data, _) => data.close,
                    bearColor: appColor(context).appTheme.red,
                    isVisibleInLegend: true,
                    bullColor: appColor(context).appTheme.green)
              ]))
    ]));
  }
}
