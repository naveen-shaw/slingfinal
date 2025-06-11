import '../../../../../config.dart';

class MessageTextField extends StatelessWidget {
  final dynamic data;

  const MessageTextField({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return data['title'].toString().length > 15
        ? Container(
            width: Sizes.s220,
            padding: EdgeInsets.symmetric(
                horizontal: Insets.i15, vertical: Insets.i10),
            decoration: ShapeDecoration(
                gradient: gradientColor(context),
                shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                        cornerRadius: 10, cornerSmoothing: 1))),
            child: TextWidgetCommon(
                text: data['title'],
                style: AppCss.latoMedium14
                    .textColor(data['type'].toString().contains("source")
                        ? appColor(context).appTheme.white
                        : appColor(context).appTheme.darkText)
                    .textHeight(1.5)))
        : Container(
            padding: EdgeInsets.symmetric(
                horizontal: Insets.i15, vertical: Insets.i10),
            decoration: ShapeDecoration(
                gradient: gradientColor(context),
                shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                        cornerRadius: 10, cornerSmoothing: 1))),
            child: TextWidgetCommon(
                text: data['title'],
                style: AppCss.latoMedium14
                    .textColor(data['type'].toString().contains("source")
                        ? appColor(context).appTheme.white
                        : appColor(context).appTheme.darkText)
                    .textHeight(1.5)));
  }
}
