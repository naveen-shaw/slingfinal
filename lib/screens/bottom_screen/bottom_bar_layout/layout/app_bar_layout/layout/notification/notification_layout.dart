import '../../../../../../../config.dart';

//notification title,icon,name,time layout
class NotificationLayout extends StatelessWidget {
  final dynamic data;

  const NotificationLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    List newList = data["list"];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: data["title"],
          style: AppCss.latoSemiBold18,
        ).padding(bottom: Sizes.s20),
        ...newList
            .asMap()
            .entries
            .map((e) => Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("${e.value['icon']}")
                                .notificationImageExtension(),
                            HSpace(Sizes.s12),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextWidgetCommon(text: e.value['title'])
                                      .padding(bottom: Sizes.s8),
                                  TextWidgetCommon(
                                      text: e.value['name'],
                                      style: AppCss.latoMedium14.textColor(
                                          appColor(context).appTheme.lightText))
                                ])
                          ],
                        ).paddingSymmetric(vertical: Sizes.s15),
                        TextWidgetCommon(
                            text: e.value['time'],
                            style: AppCss.latoMedium14.textColor(
                                appColor(context).appTheme.lightText))
                      ]),
                  // notification received, request, send rich text & Pay button layout
                  NotificationRichText(data: e.value)
                ])
                    .paddingSymmetric(horizontal: Sizes.s15)
                    .notificationExtension(
                        context: context,
                        onTap: () {
                          if (e.value['title']
                              .toString()
                              .contains(appFonts.paymentReceived)) {
                            route.pushNamed(
                                context, routeName.receivedMoneyScreen);
                          }
                        })
                    .paddingOnly(bottom: Sizes.s15))
            .toList(),
      ],
    );
  }
}
