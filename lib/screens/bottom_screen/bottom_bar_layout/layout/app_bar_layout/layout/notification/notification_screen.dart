import 'package:mpay/config.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationProvider>(
      builder: (context1, notificationCtrl, child) {
        return StatefulWrapper(onInit: ()=>Future.delayed(DurationClass.ms150).then((value) => notificationCtrl.init()),
          child: DirectionalityRtl(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CommonAppBar(
                  title: appFonts.notification,
                  isSetting: true,
                  onTap: () => route.pop(context),
                  settingTap: () {
                    NavigationBarWidgets().showPopupMenu(context, items: [
                      menuItems(appFonts.muteNotification,context),
                      menuDivider(context),
                      menuItems(appFonts.markAsAllRead,context),
                      menuDivider(context),
                      menuItems(appFonts.removeAll,context)
                    ]);
                  }),
              body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: notificationCtrl.notificationList
                        .map((e) => //notification title,icon,name,time layout
                            NotificationLayout(data: e))
                        .toList(),
                  )).paddingSymmetric(vertical: Sizes.s20, horizontal: Sizes.s20),
            ),
          ),
        );
      },
    );
  }
}
