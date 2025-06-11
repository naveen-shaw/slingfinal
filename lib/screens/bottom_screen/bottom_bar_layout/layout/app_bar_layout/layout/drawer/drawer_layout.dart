import '../../../../../../../config.dart';

// main screen drawer layout
class DrawerLayout extends StatelessWidget {
  const DrawerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<BottomNavigationProvider, ThemeService>(
        builder: (context1, bottomCtrl, themeCtrl, child) {
      return DirectionalityRtl(
          child: Drawer(
              backgroundColor: appColor(context).appTheme.screenBg,
              width: Sizes.s215,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      //drawer header layout
                      DrawerWidgets().drawerHeaderLayout(context),
                      ...bottomCtrl.drawerList.asMap().entries.map((e) {
                        //drawer items list layout
                        return DrawerWidgets()
                            .drawerItemsLists(context, e, bottomCtrl);
                      })
                    ]),
                    //drawer divider, dark theme text, theme switch button layout
                    DrawerWidgets().darkThemeLayout(context, themeCtrl)
                  ])));
    });
  }
}
