import 'dart:developer';

import 'package:mpay/screens/app_pages_screen/transfer_money_screen/layout/contact_message/message_text_fixed.dart';

import '../../../../../../../config.dart';

class ContactSourceMessage extends StatelessWidget {
  final dynamic data;

  const ContactSourceMessage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    log("MMM :${data['title'].toString().length}");
    return DirectionalityRtl(
        child: data['type'].toString().contains("source")
            ? Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                MessageTextField(data: data),
                VSpace(Sizes.s3),
                TextWidgetCommon(
                    text: data['time'],
                    style: AppCss.latoMedium12
                        .textColor(appColor(context).appTheme.lightText)
                        .textHeight(1.5))
              ]).marginOnly(bottom: Insets.i15)
            : Row(children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      MessageTextField(data: data),
                      VSpace(Sizes.s3),
                      TextWidgetCommon(
                          text: data['time'],
                          style: AppCss.latoMedium12
                              .textColor(appColor(context).appTheme.lightText)
                              .textHeight(1.5))
                    ])
              ]).marginOnly(bottom: Insets.i15));
  }
}
