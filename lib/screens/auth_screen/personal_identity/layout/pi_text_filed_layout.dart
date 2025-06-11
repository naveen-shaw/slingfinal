import '../../../../../config.dart';

class PersonalIdentityWidgets {
  //personal identity name and phone number text filed layout
  Widget piTextFiledLayout() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(text: appFonts.fullName).paddingOnly(top: Sizes.s30),
          TextFiledCommon(hintText: appFonts.enterFullName)
              .padding(top: Sizes.s8,bottom: Sizes.s15),
          TextWidgetCommon(text: appFonts.phoneNumber),
          TextFiledCommon(
            hintText: appFonts.enterYourPhoneNumber,
            keyboardType: TextInputType.number,
          ).paddingSymmetric(vertical: Sizes.s10),
        ],
      );

  // personal identity skip and continue button
  Widget piBottomLayout(BuildContext context) => Column(
        children: [
          CommonAuthButton(
            text: appFonts.continue1,
          ).padding(top: Sizes.s70, bottom: Sizes.s15).inkWell(
                onTap: () =>
                    route.pushNamed(context, routeName.confirmIdentityScreen),
              ),
          TextWidgetCommon(
            text: appFonts.skip,
            style: AppCss.latoLight16
                .textColor(appColor(context).appTheme.lightText)
          ).inkWell(onTap: () => route.pushNamed(context, routeName.confirmIdentityScreen) ).paddingOnly(bottom: Sizes.s20),
        ],
      );
}
