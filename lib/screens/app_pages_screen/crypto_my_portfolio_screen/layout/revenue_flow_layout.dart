
import '../../../../config.dart';

class RevenueFlowLayout extends StatelessWidget {
  final CryptoMyPortfolioProvider cryptoCtrl;

  const RevenueFlowLayout(this.cryptoCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(
              text: appFonts.revenueFlow,
              style: AppCss.latoMedium18
                  .textColor(appColor(context).appTheme.darkText))
          .padding(bottom: Sizes.s18, top: Sizes.s10),
      Column(children: [
        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    cryptoCtrl.revenueFlowMonth.asMap().entries.map((entry) {
                  final index = entry.key;
                  final e = entry.value;
                  return GestureDetector(
                      onTap: () => cryptoCtrl.revenueOnTap(index),
                      child: TextWidgetCommon(
                              text: e,
                              style: AppCss.latoLight14.textColor(
                                  cryptoCtrl.selectedIndex == index
                                      ? appColor(context).appTheme.primary
                                      : appColor(context).appTheme.lightText))
                          .paddingSymmetric(
                              horizontal: Sizes.s10, vertical: Sizes.s5)
                          .revenueFlowMonthExtention(
                              context, index, cryptoCtrl));
                }).toList())
            .paddingSymmetric(vertical: Sizes.s20, horizontal: Sizes.s10),
        Divider(height: 0, color: appColor(context).appTheme.dividerColor),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //revenue flow doughnut chart layout
              const RevenueChartLayout(),
              //revenue flow chart title and percentage layout
              MyPortfolioWidgets().revenueFlowChartTitlePer(context, cryptoCtrl)
            ]).padding(vertical: Sizes.s20)
      ]).decorated(
          color: appColor(context).appTheme.dividerColor,
          borderRadius: BorderRadius.circular(Sizes.s20),
          border: Border.all(color: Colors.grey.withOpacity(.2)))
    ]).padding(bottom: Sizes.s20);
  }
}
