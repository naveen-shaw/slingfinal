import '../../../../config.dart';

class PayListDialogLayout {
//pay List select card dialog
  payListDialog(context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: appColor(context).appTheme.trans,
      transitionDuration: const Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context1, anim1, anim2) {
        return Consumer<PayListProvider>(
            builder: (context, payListCtrl, child) {
          return Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: payListCtrl.payListSelectCard
                          .asMap()
                          .entries
                          .map((e) => Material(
                              color: appColor(context).appTheme.trans,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // dialog card row card image,title and card Number layout
                                          PayingMoneyWidgets()
                                              .dialogCardsRow(context, e),
                                          //dialog radio buttons layout
                                          PayingMoneyWidgets()
                                              .dialogRadioLayout(e, context)
                                        ]).inkWell(onTap: () {
                                      payListCtrl.selectedIndex = e.key;
                                      payListCtrl.radioValueChange(
                                          e.value, context);
                                    }).padding(vertical: Sizes.s15),
                                    if (e.key != 1)
                                      Divider(
                                          height: 0,
                                          color: appColor(context)
                                              .appTheme
                                              .dividerColor)
                                  ]).padding(horizontal: Sizes.s15)))
                          .toList())
                  .payingDialogExtention(context)
                  .marginSymmetric(
                      vertical: Sizes.s110, horizontal: Sizes.s20));
        });
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(
                  begin: Offset(0, !anim1.isCompleted ? 1 : -1),
                  end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
    );
  }
}
