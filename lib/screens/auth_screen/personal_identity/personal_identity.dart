import '../../../../config.dart';

class PersonalIdentityScreen extends StatelessWidget {
  const PersonalIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appColor(context).appTheme.screenBg,
          body: AuthBackgroundLayout(
              topText1: appFonts.personalIdentity,
              topText2: appFonts.fillUpTheForm,
              topImage: eImageAssets.signUpTwo,
              isImage: true,
              top: Sizes.s28,
              child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                shrinkWrap: true,
                children: [
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        PersonalIdentityWidgets().piTextFiledLayout(),
                        //personal identity date picker layout
                        const PIDatePickerLayout(),
                        //personal identity drop down layout
                        const PIDropDownLayout(),
                        PersonalIdentityWidgets().piBottomLayout(context)
                      ]),
                    ],
              ))),
    );
  }
}
