import 'package:mpay/config.dart';

class RecentPayeesListLayout extends StatelessWidget {
  const RecentPayeesListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<TransferMoneyProvider, ThemeService, LanguageProvider>(
        builder: (context1, transCtrl, themeCtrl, languageCtrl, child) {
      return DirectionalityRtl(
        child: StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => transCtrl.init()),
          child: Container(
                  color: appColor(context).appTheme.gray.withOpacity(0.07),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // recent payees heading text
                        TextWidgetCommon(
                                text: appFonts.recentPayees,
                                style: AppCss.latoSemiBold18.textColor(
                                    appColor(context).appTheme.lightText))
                            .paddingSymmetric(horizontal: Sizes.s10),
                        // recent payees icon and text list layout
                        TransferMoneyWidgets().recentPayeeIconTextLayout(transCtrl,languageCtrl,themeCtrl,context)

                      ]).paddingSymmetric(
                      horizontal: Sizes.s10, vertical: Sizes.s12))
              .paddingOnly(top: Sizes.s20)
        )
      );
    });
  }
}
