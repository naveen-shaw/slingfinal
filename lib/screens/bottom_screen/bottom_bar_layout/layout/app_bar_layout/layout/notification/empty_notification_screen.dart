import '../../../../../../../config.dart';

class EmptyNotificationScreen extends StatelessWidget {
  const EmptyNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(child:
        Consumer2<ThemeService, NotificationProvider>(
            builder: (context, themeCtrl, notificationCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => notificationCtrl.navigator(context)),
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CommonAppBar(
                  title: appFonts.notification,
                  onTap: () => route.pop(context)),
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  themeCtrl.isDarkMode
                                      ? eImageAssets.eNotificationDark
                                      : eImageAssets.eNotification,
                                  height: Sizes.s238,
                                  width: Sizes.s207),
                              SizedBox(
                                  width: Sizes.s260,
                                  child: TextWidgetCommon(
                                      text: appFonts.thereIsNoNew,
                                      textAlign: TextAlign.center))
                            ])),
                    CommonAuthButton(text: appFonts.refresh)
                        .inkWell(
                            onTap: () => route.pushReplacementNamed(
                                context, routeName.notificationScreen))
                        .paddingSymmetric(
                            vertical: Sizes.s40, horizontal: Sizes.s20)
                  ])));
    }));
  }
}
