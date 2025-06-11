import 'package:mpay/config.dart';

class RecentContactTransfer extends StatelessWidget {
  const RecentContactTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<TransferMoneyProvider, LanguageProvider, ThemeService>(
        builder: (context1, transCtrl, languageCtrl, themeCtrl, child) {
      return DirectionalityRtl(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: appColor(context).appTheme.screenBg,
              appBar: AppBar(
                  backgroundColor: appColor(context).appTheme.screenBg,
                  centerTitle: true,
                  leadingWidth: Sizes.s80,
                  leading: CommonMenuButton(
                          isIcon: false,
                          iconImage: eSvgAssets.arrowLeft,
                          colorFilter: ColorFilter.mode(
                              appColor(context).appTheme.darkText,
                              BlendMode.srcIn))
                      .inkWell(onTap: () => route.pop(context))
                      .padding(all: Insets.i8, horizontal: Sizes.s22),
                  title: TextWidgetCommon(
                      text: appFonts.transfer,
                      style: AppCss.latoSemiBold22
                          .textColor(appColor(context).appTheme.darkText))),
              body: ListView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  shrinkWrap: true,
                  children: [
                    Column(children: [
                      Column(children: [
                        //higgins Williams list Layout
                        const CommonHigainWilliamsList(),
                        //transfer Money to bank name text & textFiled,card Number text & textFiled, amount text & textFiled Layout
                        CommonTransferMoneyLayout(transCtrl.rcSelectBank,
                            (value) => transCtrl.rcSelectBankOnChange(value))
                      ]).padding(bottom: Sizes.s150),
                      // transfer($19.99) text layout
                      TransferMoneyWidgets()
                          .transferButton(context)
                          .inkWell(
                              onTap:
                                  () => //Common SuccessFully and error dialog Layout
                                      DialogSuccessfully()
                                          .successfullyDialog(context))
                          .padding(
                              top: Sizes.s20,
                              bottom: Sizes.s40,
                              horizontal: Sizes.s20)
                    ])
                  ])));
    });
  }
}
