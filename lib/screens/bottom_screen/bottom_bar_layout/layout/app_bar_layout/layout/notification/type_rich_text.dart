import 'package:mpay/config.dart';

// notification bottom text received, request, send rich text & Pay button layout
class TypeRichText extends StatelessWidget {
  final dynamic data;
  const TypeRichText({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return (data["type"] == "received" || data["type"] == "request")
        ? RichText(
            text: TextSpan(children: [
            TextSpan(
                text: data["type"] == "request"
                    ? language(context, appFonts.sendPayRequestOf)
                    : language(context, appFonts.youReceivedPayment),
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.darkText)),
            TextSpan(
                text: language(context, " ${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["price"]) ).toStringAsFixed(2)}"),
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.primary))
          ])).expanded(flex: 4)
        : (data["type"] == "send")
            ? RichText(
                text: TextSpan(children: [
                TextSpan(
                    text: language(context," ${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["price"]) ).toStringAsFixed(2)} " ),
                    style: AppCss.latoMedium14
                        .textColor(appColor(context).appTheme.primary)),
                TextSpan(
                    text: language(context, appFonts.amountHasBeenSend),
                    style: AppCss.latoMedium14
                        .textColor(appColor(context).appTheme.lightText)),
                TextSpan(
                    text: language(context, " ${data['name']}"),
                    style: AppCss.latoMedium14
                        .textColor(appColor(context).appTheme.darkText).textHeight(1.3))
              ])).expanded(flex: 4)
            : (data["type"] == "expense")
                ? RichText(
                    text: TextSpan(children: [
                    TextSpan(
                        text: language(context, appFonts.monthlyExpense),
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText))
                  ])).expanded(flex: 4)
                : RichText(
                    text: TextSpan(children: [
                    TextSpan(
                        text: language(context, appFonts.youHaveChangedYour),
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText)),
                    TextSpan(
                        text: language(context, ' ${data['subTitle']} '),
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText).textHeight(1.3)),
                    TextSpan(
                        text: language(context, appFonts.device),
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText))
                  ])).expanded(flex: 4);
  }
}
