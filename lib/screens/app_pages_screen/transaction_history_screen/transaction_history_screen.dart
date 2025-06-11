import 'package:mpay/config.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<TransactionHistoryProvider, LanguageProvider>(
        builder: (context1, transCtrl, languageCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => transCtrl.init()),
        child: DirectionalityRtl(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CommonAppBar(
                onTap: () => transCtrl.thLayout
                    ? transCtrl.thOnTapFalse()
                    : route.pop(context),
                isSetting: true,
                settingTap: () => // setting tap DropDown layout
                    TransactionHistoryWidgets()
                        .settingTapDropDown(context, transCtrl, languageCtrl),
                title: appFonts.transactionHistory,
              ),
              body: SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        ...transCtrl.thLayout
                            ? transCtrl.thLayoutList
                                .map(
                                    (e) => //TransactionHistoryLayout title,icon,name,time layout
                                        TransactionHistoryLayout(data: e))
                                .toList()
                            : transCtrl.transactionHistory
                                .map(
                                    (e) => //TransactionHistoryLayout title,icon,name,time layout
                                        TransactionHistoryLayout(data: e))
                                .toList(),
                      ]))
                  .paddingSymmetric(
                      vertical: Sizes.s20, horizontal: Sizes.s20)),
        ),
      );
    });
  }
}
