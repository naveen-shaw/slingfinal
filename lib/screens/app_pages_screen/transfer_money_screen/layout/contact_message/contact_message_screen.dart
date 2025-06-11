import '../../../../../config.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ContactPayProvider, LanguageProvider>(
        builder: (context1, contactCtrl, languageCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms50)
              .then((value) => contactCtrl.onInit()),
          child: DirectionalityRtl(
            child: Scaffold(
                appBar: CommonAppBar(
                    isSetting: true,
                    centerTitle: false,
                    onTap: () => contactCtrl.backOnTap(context),
                    titleWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidgetCommon(text: appFonts.higginsWilliams)
                              .padding(bottom: Sizes.s3),
                          TextWidgetCommon(
                              text: appFonts.online,
                              style: AppCss.latoMedium12
                                  .textColor(appColor(context).appTheme.green))
                        ])),
                body: Column(
                  children: [
                    //message list
                    Flexible(
                        child: ListView(reverse: true, children: [
                      ...contactCtrl.messageList.reversed
                          .toList()
                          .map((e) => ContactSourceMessage(data: e))
                          .toList()
                    ])),
                    //text box
                    const ContactPayButton()
                  ],
                )
                    .width(MediaQuery.of(context).size.width)
                    .padding(horizontal: Sizes.s20)),
          ));
    });
  }
}
