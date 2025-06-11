import '../../../../config.dart';

class LastPaidLitLayout extends StatelessWidget {
  const LastPaidLitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BillDetailsProvider>(builder: (context1, billCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => billCtrl.init()),
        child: Column(
                children: billCtrl.lastPaid
                    .map((e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //last paid icon,title,date,time,price layout
                              BillDetailsWidgets()
                                  .lastPaidRowLayout(context, e),
                              Divider(
                                  height: 1,
                                  color:  appColor(context).appTheme.dividerColor)
                            ]))
                    .toList())
            .lastPaidExtension(context),
      );
    });
  }
}
