import '../../../../../../../config.dart';

// notification received, request, send rich text & Pay button layout
class NotificationRichText extends StatelessWidget {
  final dynamic data;

  const NotificationRichText({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: Sizes.s40, height: Sizes.s10),
        HSpace(Sizes.s12),
        // notification bottom text received, request, send rich text & Pay button layout
        TypeRichText(data: data),
        //Pay button layout
        if (data['title'].toString().contains(appFonts.paymentRequest))
          TextWidgetCommon(
                  text: appFonts.pay,
                  style: AppCss.latoMedium12
                      .textColor(appColor(context).appTheme.white)).padding(horizontal: Sizes.s15,vertical: Sizes.s6)
              .center()
              .decorated(
                  gradient: gradientColor(context),
                  borderRadius:
                      SmoothBorderRadius(cornerRadius: AppRadius.r5)).inkWell(onTap: ()=>route.pushNamed(context, routeName.transferMoneyScreen))
      ]
    ).paddingOnly(bottom: Sizes.s15);
  }
}
