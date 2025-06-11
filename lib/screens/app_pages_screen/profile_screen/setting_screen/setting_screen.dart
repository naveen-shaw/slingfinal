import '../../../../config.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<SettingProvider, ThemeService, LanguageProvider>(
        builder: (context1, settingCtrl, themeCtrl, languageCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => settingCtrl.init()),
        child: DirectionalityRtl(
          child: Scaffold(
            appBar: CommonAppBar(
                title: appFonts.setting, onTap: () => route.pop(context)),
            body: SingleChildScrollView(
              child: Column(children: [
                // setting notification switch layout
                SettingWidgets().settingNotificationLayout(context),
                // theme switch layout
                SettingWidgets().themeLayout(context, themeCtrl, languageCtrl),
                // language radio Button layout
                SettingWidgets()
                    .languageLayout(context),
                //currency radio Button layout
                SettingWidgets().currencyLayout(context)
              ]).padding(horizontal: Sizes.s20, vertical: Sizes.s15),
            ),
          ),
        ),
      );
    });
  }
}
