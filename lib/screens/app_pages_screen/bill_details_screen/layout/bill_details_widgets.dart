

import 'package:mpay/config.dart';

class BillDetailsWidgets {
  //this month checklist icon,title,subtitle layout
  Widget iconRowLayout(BuildContext context, data) {
    return Row(children: [
      SizedBox(
              height: Sizes.s38,
              width: Sizes.s38,
              child: SvgPicture.asset("${data["icon"]}",
                  colorFilter: ColorFilter.mode(
                      appColor(context).appTheme.darkText, BlendMode.srcIn),
                  fit: BoxFit.scaleDown))
          .decorated(
              color: appTheme.gray.withOpacity(0.1),
              borderRadius: BorderRadius.circular(Sizes.s10))
          .paddingSymmetric(vertical: Sizes.s18, horizontal: Sizes.s15),
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetCommon(text: data["title"], style: AppCss.latoMedium14),
            VSpace(Sizes.s3),
            TextWidgetCommon(
                text: data['subTitle'],
                style: AppCss.latoLight12
                    .textColor(appColor(context).appTheme.lightText))
          ])
    ]);
  }

  //this month checklist price,pay and paid button layout
  Widget priceRowLayout(BuildContext context, data) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      TextWidgetCommon(
          text:
              "${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["price"])).toStringAsFixed(2)}",
          style: AppCss.latoSemiBold14),
      TextWidgetCommon(
              text: data["title"].toString().contains(appFonts.apple) ||
                      data["title"].toString().contains(appFonts.tv)
                  ? appFonts.pay
                  : appFonts.paid,
              style: AppCss.latoMedium12.textColor(
                  data["title"].toString().contains(appFonts.apple) ||
                          data["title"].toString().contains(appFonts.tv)
                      ? appColor(context).appTheme.white
                      : appColor(context).appTheme.primary)).padding(vertical: Sizes.s6,horizontal: Sizes.s16)
          .center()
          .decorated(
              gradient: data["title"].toString().contains(appFonts.apple) ||
                      data["title"].toString().contains(appFonts.tv)
                  ? gradientColor(context)
                  : gradientColorChange(context,
                      firstColor: appColor(context).appTheme.primary.withOpacity(0.2),
                      secColor: appColor(context).appTheme.primary.withOpacity(0.2)),
              borderRadius: SmoothBorderRadius(cornerRadius: AppRadius.r20))
          .inkWell(onTap: () {
        if (data["title"].toString().contains(appFonts.apple) ||
            data["title"].toString().contains(appFonts.tv)) {
          commonDialog(context, false,
              text: appFonts.appleBillDetail,
              children: [
                //common billDetails Dialog amount,bill date,due Date,bill Number,Mobile Number,Bill Status layout
                BillDetailsDialogsWidgets().commonBillLayout(context, data)
              ]);
        } else {
          commonDialog(context, false,
              text: appFonts.appleBillDetail,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Make a payment screen dialog pay from,pay to, Date layout
                BillDetailsDialogsWidgets().commonBillLayout(context, data)
              ]);
        }
      })
    ]);
  }

  //last paid icon,title,date,time,price layout
  Widget lastPaidRowLayout(BuildContext context, e) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: Sizes.s50,
          width: Sizes.s50,
          child: SvgPicture.asset(e['icon'],
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                      appColor(context).appTheme.darkText, BlendMode.srcIn))
              .selectExtension(context)),
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(text: e['title']).padding(bottom: Sizes.s6),
        TextWidgetCommon(
            text: e['date'],
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.lightText))
      ]).padding(horizontal: Sizes.s12)),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(
                text:
                    "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e["price"])).toStringAsFixed(2)}",
                style: AppCss.latoBold14
                    .textColor(appColor(context).appTheme.primary))
            .padding(bottom: Sizes.s6),
        TextWidgetCommon(
            text: e['time'],
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.lightText))
      ])
    ]).padding(all: Sizes.s15);
  }
}
