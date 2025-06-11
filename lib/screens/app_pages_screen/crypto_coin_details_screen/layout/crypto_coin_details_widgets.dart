import 'package:mpay/config.dart';

class CryptoCoinDetailsWidget{
//crypto screen bitCoin Card layout
  Widget bitCoinCardLayout(BuildContext context, CryptoCoinDetailsProvider coinCtrl){
    return    Column(
        children: coinCtrl.bitcoinsAmount
            .map((e) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                SvgPicture.asset(e['icon']),
                HSpace(Sizes.s12),
                Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      TextWidgetCommon(
                        text:
                        '${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['amount'])).toStringAsFixed(2)}',
                        style: AppCss.latoBold20
                            .textColor(appColor(context)
                            .appTheme
                            .darkText),
                      ).padding(bottom: Sizes.s6),
                      TextWidgetCommon(
                          text: e['subTitle'],
                          style: AppCss.latoSemiBold14
                              .textColor(appColor(context)
                              .appTheme
                              .lightText))
                    ])
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
                TextWidgetCommon(
                    text: e['per'],
                    style: AppCss.latoMedium14
                        .textColor(appColor(context)
                        .appTheme
                        .green))
                    .padding(bottom: Sizes.s10),
                TextWidgetCommon(
                    text: e['subPer'],
                    style: AppCss.latoMedium14.textColor(
                        appColor(context)
                            .appTheme
                            .lightText))
              ])
            ]))
            .toList())
        .padding(vertical: Sizes.s16, horizontal: Sizes.s20)
        .lastPaidExtension(context);
  }


}