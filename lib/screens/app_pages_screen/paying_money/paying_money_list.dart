import '../../../config.dart';

class PayingMoneyScreen extends StatelessWidget {
  const PayingMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
        child: Consumer<PayListProvider>(builder: (context, payListCtrl, child) {
            return StatefulWrapper(onInit: ()=>Future.delayed(DurationClass.ms150)
                .then((value) => payListCtrl.init()),
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: appColor(context).appTheme.screenBg,
                  appBar: CommonAppBar(
                      title: appFonts.payMoney, onTap: () => route.pop(context)),
                  body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    //payList screen profile name and image layout
                    PayingMoneyWidgets().moneyProfileLayout(context),
                    //payList screen pay Now Button Layout
                    PayingMoneyWidgets().payNowButtonLayout(context)
                  ]).paddingSymmetric(horizontal: Sizes.s20, vertical: Sizes.s20)),
            );
          }
        ));
  }
}
