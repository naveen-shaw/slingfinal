import 'package:mpay/config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<ProfileScreenProvider, ThemeService, LanguageProvider>(
        builder: (context1, profileCtrl, themeCtrl, languageCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => profileCtrl.init()),
          child: DirectionalityRtl(
            child: Scaffold(
                backgroundColor: appColor(context).appTheme.screenBg,
                body: SingleChildScrollView(
                  child: Column(children: [
                    //profile image, name , number layout
                    ProfileWidgets().profileLayout(context),
                    //profile screens list layout
                    ProfileWidgets().profileScreenList(context,profileCtrl,themeCtrl,languageCtrl)
                  ]).padding(
                      horizontal: Sizes.s20,
                      vertical: Sizes.s15,
                      bottom: Sizes.s90),
                )),
          ));
    });
  }
}
