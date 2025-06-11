import 'package:mpay/config.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).appTheme.screenBg,
      appBar: AppBar(
          leadingWidth: Sizes.s80,
          leading: CommonMenuButton(
                  isIcon: false,
                  iconImage: eSvgAssets.arrowLeft,
                  colorFilter: ColorFilter.mode(
                      appColor(context).appTheme.darkText, BlendMode.srcIn))
              .inkWell(onTap: () => route.pop(context))
              .padding(all: 8.5, horizontal: Insets.i22)),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(eImageAssets.noInternetBody).center(),
            TextWidgetCommon(
              text: appFonts.oopsNoInternet,
              style: AppCss.latoSemiBold18
                  .textColor(appColor(context).appTheme.darkText),
            ).padding(top: Sizes.s28,bottom: Sizes.s8),
            TextWidgetCommon(
              text: appFonts.pleaseCheckYourInternet,
              color: appColor(context).appTheme.lightText,
              textAlign: TextAlign.center,
            ).width(Sizes.s300),
          ]),
    );
  }
}
