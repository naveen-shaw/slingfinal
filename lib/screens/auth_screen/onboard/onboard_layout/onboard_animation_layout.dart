import '../../../../config.dart';

//onBoard manage your finance wisely animation layout
class OnBoardAnimationLayout extends StatelessWidget {
  const OnBoardAnimationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<OnBoardProvider, ThemeService>(
        builder: (context1, onBoardCtrl, themeCtrl, child) {
      return Stack(alignment: Alignment.center, children: [
        Positioned(
                top: Sizes.s93 + onBoardCtrl.animation!.value,
                child: Container(
                    height: Sizes.s250,
                    width: Sizes.s250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(themeCtrl.isDarkMode
                                ? eImageAssets.manageDark
                                : eImageAssets.manage)))))
            .animate(delay: 2.5.seconds)
            .shake(duration: 300.milliseconds, curve: Curves.easeInOutQuad),
        CommonPositionLayout(
            height: Sizes.s80,
            top: Sizes.s224,
            image: themeCtrl.isDarkMode
                ? eImageAssets.yourDark
                : eImageAssets.your,
            delay: 4.seconds),
        CommonPositionLayout(
            height: Sizes.s80,
            width: Sizes.s180,
            top: Sizes.s305,
            image: themeCtrl.isDarkMode
                ? eImageAssets.financeDark
                : eImageAssets.finance,
            delay: 5.seconds),
        CommonPositionLayout(
            height: Sizes.s80,
            width: Sizes.s180,
            top: Sizes.s375,
            image: themeCtrl.isDarkMode
                ? eImageAssets.wiselyDark
                : eImageAssets.wisely,
            delay: 6.seconds)
      ]);
    });
  }
}
