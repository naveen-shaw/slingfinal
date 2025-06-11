import '../../../../../../config.dart';

class PayeeListLayout extends StatelessWidget {
  final dynamic data;

  const PayeeListLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    var languageCtrl = Provider.of<LanguageProvider>(context);
    return DirectionalityRtl(
      child: Row(children: [
        Image.asset("${data["image"]}", fit: BoxFit.fill)
            .selectExtension(context)
            .padding(
                vertical: Sizes.s15,
                right: languageCtrl.getLocal() == 'ar' || languageCtrl.isUserRTl
                    ? Sizes.s0
                    : Sizes.s12,
                left: languageCtrl.getLocal() == 'ar' || languageCtrl.isUserRTl
                    ? Sizes.s12
                    : Sizes.s0),
        Expanded(
            flex: 2,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidgetCommon(text: data['name'])
                      .padding(bottom: Sizes.s8),
                  TextWidgetCommon(
                      text: data['accountNumber'],
                      style: AppCss.latoMedium14
                          .textColor(appColor(context).appTheme.lightText))
                ])),
        // Define the menu items for the PopupMenuButton
        const CommonPopUpMenuButton()
      ]).padding(horizontal: Sizes.s15).transactionExtension(context: context),
    );
  }
}
