import '../../../../config.dart';

class ChartButtonsLayout {
  //crypto chart buttons layout
  Widget chartButtons(CryptoProvider cryptoCtrl, context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cryptoCtrl.candleChartButton.asMap().entries.map((entry) {
              final index = entry.key;
              final e = entry.value;
              return GestureDetector(
                  onTap: () => cryptoCtrl.candleOnTap(index),
                  child: TextWidgetCommon(
                          text: e,
                          style: AppCss.latoLight14.textColor(
                              cryptoCtrl.selectedIndex == index
                                  ? appColor(context).appTheme.white
                                  : appColor(context).appTheme.darkText)).center()
                      .width(Sizes.s74)
                      .height(Sizes.s34)
                      .decorated(
                          boxShadow: [
                        BoxShadow(
                            color: appTheme.lightText.withOpacity(0.2), 
                            blurRadius: 0.1,
                            offset: const Offset(0.0, 0.1))
                      ],
                          borderRadius: BorderRadius.circular(Sizes.s6),
                          gradient: cryptoCtrl.selectedIndex == index
                              ? gradientColor(context)
                              : gradientColorChange(context,
                                  firstColor: appColor(context)
                                      .appTheme
                                      .menuButtonColor,
                                  secColor: appColor(context)
                                      .appTheme
                                      .menuButtonColor),
                          border: Border.all(
                              color: appColor(context).appTheme.dividerColor)));
            }).toList())
        .padding(horizontal: Sizes.s15, bottom: Sizes.s20);
  }

//LineBar Chart Months Buttons
  Widget lineBarChartMonthButtons(context, CryptoCoinDetailsProvider coinCtrl) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: coinCtrl.months
                .asMap()
                .entries
                .map((e) => TextWidgetCommon(
                        text: e.value,
                        style: AppCss.latoMedium14.textColor(
                            coinCtrl.selectedIndex == e.key
                                ? appColor(context).appTheme.white
                                : appColor(context).appTheme.lightText))
                    .padding(all: Sizes.s15)
                    .decorated(
                        boxShadow: [
                          BoxShadow(
                              color: appTheme.lightText.withOpacity(0.2),
                              blurRadius: 0.2,
                              offset: const Offset(0.0, 0.1))
                        ],
                        borderRadius: BorderRadius.circular(Sizes.s10),
                        gradient: coinCtrl.selectedIndex == e.key
                            ? gradientColor(context)
                            : gradientColorChange(context,
                                firstColor:
                                    appColor(context).appTheme.menuButtonColor,
                                secColor:
                                    appColor(context).appTheme.menuButtonColor),
                        border: Border.all(
                            color: appColor(context).appTheme.dividerColor))
                    .inkWell(onTap: () => coinCtrl.monthOnTap(e.key))
                    .padding(
                        bottom: coinCtrl.selectedIndex == e.key
                            ? Sizes.s15
                            : Sizes.s0))
                .toList())
        .padding(top: Sizes.s20, bottom: Sizes.s10);
  }
}
