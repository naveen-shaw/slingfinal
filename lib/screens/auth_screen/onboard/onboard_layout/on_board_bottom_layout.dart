import 'package:mpay/config.dart';

class OnBoardBottomLayout extends StatelessWidget {
  const OnBoardBottomLayout({super.key});

//OnBoard bottom The best payment method...text,skip and container nextScreen button layout
  @override
  Widget build(BuildContext context) {
    var languageCtrl = Provider.of<LanguageProvider>(context, listen: false);

    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      TextWidgetCommon(
        textAlign: TextAlign.center,
        text: appFonts.theBestPayment,
        style: AppCss.latoRegular14
            .textColor(appColor(context).appTheme.lightText)
            .textHeight(1.4),
      ).paddingSymmetric(vertical: Sizes.s10, horizontal: Sizes.s40),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(
                text: appFonts.skip,
                style: AppCss.latoLight16
                    .textColor(appColor(context).appTheme.lightText))
            .inkWell(
                onTap: () => route.pushNamed(context, routeName.signInScreen)),
        Container(
                height: Sizes.s58,
                width: Sizes.s58,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, gradient: gradientColor(context)),
                padding: EdgeInsets.all(Sizes.s2),
                child: Center(
                    child: Container(
                        padding: EdgeInsets.all(Sizes.s8),
                        height: Sizes.s55,
                        width: Sizes.s55,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: appColor(context).appTheme.black,
                                width: 4),
                            gradient: radialGradient(context)),
                        child: Transform.flip(
                            flipX: languageCtrl.isUserRTl ||
                                    languageCtrl.getLocal() == 'ar'
                                ? true
                                : false,
                            child: SvgPicture.asset(eSvgAssets.onboardArrow)
                                .center()))))
            .inkWell(
                onTap: () => route.pushNamed(context, routeName.onBoardCard))
      ]).paddingSymmetric(horizontal: Sizes.s20, vertical: Sizes.s35)
    ]);
  }
}
