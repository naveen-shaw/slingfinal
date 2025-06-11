
import '../../../../../../../config.dart';

class ReceivedMoneyScreen extends StatelessWidget {
  const ReceivedMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationProvider>(
        builder: (context1, notificationCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => notificationCtrl.init()),
        child: DirectionalityRtl(
          child: Scaffold(
              backgroundColor: appColor(context).appTheme.screenBg,
              appBar: CommonAppBar(
                  title: appFonts.notification,
                  onTap: () => route.pop(context),imageIconTap:() => notificationCtrl.trashOnTap(context),
                  isImageIconSvg: true),
              body: Column(
                      children: notificationCtrl.receiveMoneyList
                          .map((e) => Column(children: [
                        //received money text and download image layout
                        ReceivedMoneyWidgets().receiveMoneyLayout(context),
                        //  common amount and other list text
                                ReceivedMoneyWidgets().commonTextLayout(
                                    context, e,
                                    text: appFonts.amount,color: appColor(context).appTheme.primary,
                                    arrayText:
                                        "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e["amount"])).toStringAsFixed(2)} "),
                                ReceivedMoneyWidgets().commonTextLayout(
                                    context, e,
                                    text: appFonts.date,
                                    arrayText: "${e['Date']} | ${e['time']}"),
                                ReceivedMoneyWidgets().commonTextLayout(
                                    context, e,
                                    text: appFonts.receiveFrom,
                                    arrayText: e['receiverForm']),
                                ReceivedMoneyWidgets().commonTextLayout(
                                    context, e,
                                    text: appFonts.bankName,
                                    arrayText: e['bankName']),
                              ]))
                          .toList())
                  .receivedMoneyExtension(context)),
        ),
      );
    });
  }
}
