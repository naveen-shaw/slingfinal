import 'package:mpay/config.dart';

class CommonMenuButton extends StatelessWidget {
  final IconData? icon;
  final bool? isIcon;
  final bool? isBorder;
  final Color? color;
  final Color? iconColor;
  final ColorFilter? colorFilter;
  final BoxBorder? border;
  final String? iconImage;

  const CommonMenuButton(
      {super.key,
      this.icon,
      this.isIcon,
      this.color,
      this.iconColor,
      this.border,
      this.isBorder,
      this.iconImage,
      this.colorFilter});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService, LanguageProvider>(
        builder: (context1, themeCtrl, languageCtrl, child) {
      return DirectionalityRtl(
          child: Container(
              padding: EdgeInsets.all(Insets.i8),
              decoration: BoxDecoration(
                  color: color ?? appColor(context).appTheme.menuButtonColor,
                  border: Border.all(
                      color: appColor(context).appTheme.radioGrayColor),
                  borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6)),
              child: isIcon == true
                  ? Icon(icon!,
                          size: Sizes.s18,
                          color: iconColor ?? appColor(context).appTheme.darkText)
                      .center()
                  : Transform.flip(
                      flipX: languageCtrl.isUserRTl ||
                              languageCtrl.getLocal() == 'ar'
                          ? true
                          : false,
                      child: SvgPicture.asset(
                          themeCtrl.isDarkMode
                              ? iconImage ?? eSvgAssets.bellDarkTheme
                              : iconImage ?? eSvgAssets.bell,
                          fit: BoxFit.fill,
                          colorFilter: colorFilter))));
    });
  }
}
