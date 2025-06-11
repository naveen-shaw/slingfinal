
import '../../../../config.dart';

class ProfileChangePassWidgets{
  // profile screen change password screen old password,new pass, confirm pass text & textField layout
  Widget profileChangePassOldLayout(context, ProfileChangePassProvider changePassCtrl){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(text: appFonts.oldPassword),
          TextFiledCommon(hintText: appFonts.enterOldPassword)
              .padding(top: Sizes.s8, bottom: Sizes.s20),
          TextWidgetCommon(text: appFonts.newPassword),
          TextFiledCommon(hintText: appFonts.enterNewPassword)
              .padding(top: Sizes.s8, bottom: Sizes.s20),
          TextWidgetCommon(text: appFonts.confirmPassword),
          TextFiledCommon(hintText: appFonts.reEnterNewPassword)
              .padding(top: Sizes.s8, bottom: Sizes.s50),
          CommonAuthButton(text: appFonts.updatePassword).inkWell(
              onTap: () => changePassCtrl.updatePassword(context))
        ]).padding(all: Sizes.s20);
  }
  // profile screen change password screen Email or Number  text & textField layout
  Widget profileChangePassEmailLayout(context, ProfileChangePassProvider changePassCtrl){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(
              text: appFonts.enterYourRegisteredMailId,
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.lightText)
                  .textHeight(1.3)),
          TextWidgetCommon(
            text: appFonts.emailOrPhone,
          ).padding(top: Sizes.s20, bottom: Sizes.s8),
          TextFiledCommon(hintText: appFonts.enterEmailOrPhone)
              .padding(bottom: Sizes.s50),
          CommonAuthButton(text: appFonts.changePassword)
              .inkWell(onTap: () => changePassCtrl.changeTrue())
        ]).padding(all: Sizes.s20);
  }
}