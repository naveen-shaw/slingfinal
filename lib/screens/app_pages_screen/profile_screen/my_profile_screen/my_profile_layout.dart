import 'package:mpay/config.dart';

class MyProfileLayout extends StatelessWidget {
  const MyProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appColor(context).appTheme.screenBg,
          appBar: CommonAppBar(
              onTap: () => route.pop(context), title: appFonts.myAccount),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //profile screen my Account profile image layout
            MyProfileWidgets().profileImageLayout(context),
            TextWidgetCommon(text: appFonts.phone)
                .padding(top: Sizes.s15, bottom: Sizes.s8),
            TextFiledCommon(
                hintText: appFonts.phoneNumber,
                keyboardType: TextInputType.number),
            TextWidgetCommon(text: appFonts.userId)
                .padding(top: Sizes.s15, bottom: Sizes.s8),
            TextFiledCommon(hintText: appFonts.enterUserId)
                .padding(bottom: Sizes.s50),
            CommonAuthButton(text: appFonts.update)
                .inkWell(onTap: () => route.pop(context))
          ]).padding(all: Sizes.s20)),
    );
  }
}
