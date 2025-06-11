import '../../../../../../config.dart';

// homeScreen heading title and see all layout
class CommonTitleText extends StatelessWidget {
  final String? title;
  final dynamic onTap;

  const CommonTitleText({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidgetCommon(text: title, style: AppCss.latoSemiBold18),
        TextWidgetCommon(
          text: appFonts.seeAll,
          style: AppCss.latoSemiBold14
              .textColor(appColor(context).appTheme.primary),
        ).inkWell(onTap: onTap),
      ],
    );
  }
}
