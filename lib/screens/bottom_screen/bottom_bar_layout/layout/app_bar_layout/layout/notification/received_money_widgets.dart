import 'package:mpay/config.dart';


class ReceivedMoneyWidgets{
//  common amount and other list text
  commonTextLayout(context,e,{String? text,String? arrayText,color}){
   return Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          TextWidgetCommon(
              text: text,
              style: AppCss.latoLight16.textColor(
                  appColor(context).appTheme.darkText)),
          TextWidgetCommon(
              text:
              arrayText,
              style: AppCss.latoLight16.textColor(color??appColor(context).appTheme.lightText))
        ]).paddingOnly(
        right: Sizes.s15,
        left: Sizes.s15,
        top: Sizes.s20);
  }
//received money text and download image layout
  receiveMoneyLayout(context){
    return     Container(
        decoration: BoxDecoration(
            color: appColor(context)
                .appTheme
                .gray
                .withOpacity(.2),
            borderRadius: BorderRadius.only(
                topRight:
                Radius.circular(Sizes.s10),
                topLeft:
                Radius.circular(Sizes.s10))),
        child: Column(children: [
          Container(
              height: Sizes.s74,
              width: Sizes.s74,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient:
                  gradientColor(context)),
              child: SvgPicture.asset(
                  eSvgAssets
                      .notificationDownload,
                  fit: BoxFit.scaleDown))
              .center()
              .paddingSymmetric(
              vertical: Sizes.s15),
          TextWidgetCommon(
              text: appFonts.receiveMoney,
              style: AppCss.latoMedium18
                  .textColor(appColor(context)
                  .appTheme
                  .darkText))
              .padding(bottom: Sizes.s15),
          DottedLine(
              dashColor: appColor(context)
                  .appTheme
                  .gray
                  .withOpacity(0.4))
        ]));
  }
}