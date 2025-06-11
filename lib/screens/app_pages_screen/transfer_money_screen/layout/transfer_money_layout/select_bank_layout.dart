import '../../../../../config.dart';

class SelectBankLayout extends StatelessWidget {
  const SelectBankLayout({super.key});

  //select bank image layout
  @override
  Widget build(BuildContext context) {
    return Consumer3<TransferMoneyProvider, ThemeService, LanguageProvider>(
        builder: (context1, transCtrl, themeCtrl, languageCtrl, child) {
      return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: transCtrl.selectBankList.map((e) {
            final bool isCheck = e['isCheck'] ?? false;
            return Expanded(
                child: Stack(children: [
              // select bank image layout
              Transform.flip(
                  flipX:
                      languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                          ? true
                          : false,
                  child: TransferMoneyWidgets()
                      .selectBankImageLayout(context, e, languageCtrl)
                      .height(.16.sh)
                      .width(.99.sw)
                      .decorated(
                          image: DecorationImage(
                              image: AssetImage(isCheck
                                  ? eImageAssets.primarySub
                                  : themeCtrl.isDarkMode
                                      ? eImageAssets.subtractDark
                                      : eImageAssets.subtract),
                              fit: BoxFit.fill))
                      .inkWell(
                          onTap: () =>
                              transCtrl.updateIsCheckForBank(e, context))),
              // select bank container layout
              TransferMoneyWidgets()
                  .selectBankImageContainer(context, isCheck, languageCtrl)
            ]));
          }).toList());
    });
  }
}
