import 'package:flutter/services.dart';
import '../../../../config.dart';

// bottom navigation Bar layout
class BottomNavigationLayout extends StatelessWidget {
  const BottomNavigationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<BottomNavigationProvider, ThemeService>(
        builder: (context1, bottomCtrl, themeCtrl, child) {
      return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          SystemNavigator.pop();
        },
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.s15),
                // Adjust border radius as needed
                topRight: Radius.circular(Sizes.s15)),
            child: BottomAppBar(
                shadowColor: appColor(context).appTheme.darkText,
                color: appColor(context).appTheme.menuButtonColor,
                height: Sizes.s70,
                shape: const CircularNotchedRectangle(),
                notchMargin: 10,
                elevation: Sizes.s10,
                child: NavigationBarWidgets().buildNavItem(context))),
      );
    });
  }
}
