import 'package:mpay/config.dart';

class BottomBarLayout extends StatefulWidget {
  const BottomBarLayout({Key? key}) : super(key: key);

  @override
  State<BottomBarLayout> createState() => _BottomBarLayoutState();
}

class _BottomBarLayoutState extends State<BottomBarLayout> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
      builder: (context1, bottomCtrl, child) {
        return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => bottomCtrl.onInit()),
          child: DirectionalityRtl(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: appColor(context).appTheme.screenBg,
              key: bottomCtrl.bottomNavScaffoldKey,
              extendBody: true,
              // main screen drawer layout
              drawer: const DrawerLayout(),
              appBar: HomeAppBar(
                  bellTap: () =>
                      route.pushNamed(context, routeName.emptyNotificationScreen),
                  onTap: () =>
                      bottomCtrl.bottomNavScaffoldKey.currentState!.openDrawer()),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: // floating action button scan icon layout
                  const FloatingActionButtonLayout(),
              bottomNavigationBar: // bottom navigation Bar layout
                  const BottomNavigationLayout(),
              body: bottomCtrl.screens[bottomCtrl.currentTab],
            ),
          ),
        );
      },
    );
  }
}
