import '../config.dart';

class AuthBackgroundLayout extends StatelessWidget {
  final Widget? child;
  final String? topText1;
  final String? topText2;
  final String? topImage;
  final String? text;
  final double? height;
  final double? right;
  final double? width;
  final double? bottom;
  final double? top;
  final bool? isImage;
  final bool? isText;
  final AlignmentGeometry? alignment;

  const AuthBackgroundLayout(
      {super.key,
      this.child,
      this.topText1,
      this.topText2,
      this.topImage,
      this.height,
      this.right,
      this.bottom,
      this.width,
      this.isImage,
      this.top,
      this.alignment,
      this.isText,
      this.text});

  @override
  Widget build(BuildContext context) {
    var languageCtrl = Provider.of<LanguageProvider>(context);
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(eImageAssets.authBg), fit: BoxFit.fill)),
          child: Stack(children: [
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  height: .69.sh,
                  decoration: BoxDecoration(
                      color: appColor(context).appTheme.screenBg,
                      borderRadius: SmoothBorderRadius.vertical(
                          top: SmoothRadius(
                              cornerRadius: Sizes.s20, cornerSmoothing: 2))),
                  child: child!.paddingSymmetric(horizontal: Sizes.s20))
            ])
          ])),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          HSpace(Sizes.s20),
          Align(
                  alignment:
                      languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                          ? Alignment.topRight
                          : Alignment.topLeft,
                  child: Icon(Icons.arrow_back_rounded,
                      color: appColor(context).appTheme.white))
              .inkWell(onTap: () => route.pop(context))
              .padding(top: Sizes.s50),
          if (isText == true)
            Row(children: [
              HSpace(Sizes.s20),
              TextWidgetCommon(
                text: text,
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.white),
              ).padding(top: Sizes.s50),
            ])
        ]),
        if (isText != true)
          Row(children: [
            HSpace(languageCtrl.getLocal() == 'ar' ? Sizes.s18 : Sizes.s20),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidgetCommon(
                      text: topText1!,
                      style: languageCtrl.getLocal() == 'ar'
                          ? AppCss.latoSemiBold20
                              .textColor(appColor(context).appTheme.white)
                          : AppCss.latoSemiBold22
                              .textColor(appColor(context).appTheme.white))
                  .padding(bottom: Sizes.s6),
              TextWidgetCommon(
                  text: topText2!,
                  style: AppCss.latoLight16
                      .textColor(appColor(context).appTheme.white))
            ]).padding(top: Sizes.s70)
          ])
      ]),
      if (isImage == true)
        Padding(
            padding: EdgeInsets.only(
                top: top ?? Sizes.s50,
                right: languageCtrl.getLocal() == 'ar' || languageCtrl.isUserRTl
                    ? Sizes.s0
                    : Sizes.s12,
                left: languageCtrl.getLocal() == 'ar' || languageCtrl.isUserRTl
                    ? Sizes.s12
                    : Sizes.s0),
            child: Align(
                alignment:
                    languageCtrl.getLocal() == 'ar' || languageCtrl.isUserRTl
                        ? Alignment.topLeft
                        : Alignment.topRight,
                child: Transform.flip(
                  flipX:
                      languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                          ? true
                          : false,
                  child: SizedBox(
                      height: height ?? Sizes.s225,
                      width: width,
                      child: Image(image: AssetImage(topImage ?? ""))),
                )))
    ]);
  }
}
