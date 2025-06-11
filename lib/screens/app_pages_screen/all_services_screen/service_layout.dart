import '../../../config.dart';

//All service icon, title layout
class ServiceLayout extends StatelessWidget {
  final dynamic data;

  const ServiceLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset("${data["icon"]}",
                height: Sizes.s24,
                width: Sizes.s24,
                colorFilter: ColorFilter.mode(
                    appColor(context).appTheme.darkText, BlendMode.srcIn),
                fit: BoxFit.fill),
          ]).selectExtension(context)
        ]).padding(bottom: Sizes.s8),
        TextWidgetCommon(
          text: data["title"],
          style:
              AppCss.latoLight14.textColor(appColor(context).appTheme.darkText),
        )
      ],
    );
  }
}
