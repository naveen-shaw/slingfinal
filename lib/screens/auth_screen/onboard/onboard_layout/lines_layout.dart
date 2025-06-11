import '../../../../config.dart';

class LinesLayout extends StatelessWidget {
  final ThemeService themeCtrl;

  const LinesLayout(this.themeCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    // onBoard background lines
    return Stack(
      children: [
        Positioned(
            top: Sizes.s130,
            left: Sizes.s58,
            child: SvgPicture.asset(
              themeCtrl.isDarkMode
                  ? eSvgAssets.rightLinesDark
                  : eSvgAssets.rightLines,
              height: Sizes.s30,
              width: Sizes.s30,
            )),
        Positioned(
          top: Sizes.s335,
          right: -Sizes.s7,
          child: Image(
            image: AssetImage(eImageAssets.leftLine),
            height: Sizes.s30,
            width: Sizes.s30,
          ).padding(right: Sizes.s65, top: Sizes.s30),
        ),
      ],
    );
  }
}
