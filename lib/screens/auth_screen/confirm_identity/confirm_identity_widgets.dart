import '../../../../config.dart';

class ConfirmIdentityWidgets {
  // confirmIdentity screen camara and add id's layout
  Widget ciCameraLayout(context) => Column(children: [
        // common inside the container DottedLine Layout
        ConfirmIdentityWidgets()
            .commonDottedLineContainer(context, icon: eSvgAssets.plus)
            .paddingOnly(bottom: Sizes.s12),
        TextWidgetCommon(
          text: appFonts.toConfirmYourInformation,
          textAlign: TextAlign.center,
        ).padding(horizontal: Sizes.s20).center(),
        // ConfirmIdentity Submit all button layout
        ConfirmIdentityWidgets()
            .dottedLineLayout(context)
            .paddingOnly(top: Sizes.s25, bottom: Sizes.s30),
        // common inside the container DottedLine Layout
        ConfirmIdentityWidgets()
            .commonDottedLineContainer(context, icon: eSvgAssets.cameraIcon)
            .paddingOnly(bottom: Sizes.s12),
        TextWidgetCommon(
                text: appFonts.toVerifyYourDetails, textAlign: TextAlign.center)
            .padding(horizontal: Sizes.s20)
            .center(),
      ]);

// ConfirmIdentity Submit all button layout
  Widget ciBottomButtonLayout(context) => CommonAuthButton(
          text: appFonts.submitAll, textColor: appTheme.fieldCardBg)
      .padding(top: Sizes.s10, bottom: Sizes.s15)
      .inkWell(
        onTap: () => route.pushNamed(context, routeName.addManuallyDetails),
      );

  // ConfirmIdentity center dottedLine Layout
  Widget dottedLineLayout(context) => DottedLine(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        lineLength: double.infinity,
        lineThickness: 2.0,
        dashLength: 5.0,
        dashColor: appTheme.gray.withOpacity(0.3),
        dashGapLength: 2.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      );

// common inside the container DottedLine Layout
  Widget commonDottedLineContainer(context, {String? icon}) => Container(
        height: Sizes.s100,
        width: Sizes.s100,
        decoration: BoxDecoration(
            color: appColor(context).appTheme.cameraBgColor,
            shape: BoxShape.circle),
        child: Center(
            child: DottedBorder(
          borderType: BorderType.Oval,
          color: appColor(context).appTheme.gray.withOpacity(0.5),
          child: Container(
              height: Sizes.s85,
              width: Sizes.s85,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: SvgPicture.asset(
                "$icon",fit: BoxFit.fill,
                height: Sizes.s50,
                width: Sizes.s50,
              ).center()),
        )),
      ).center();
}
