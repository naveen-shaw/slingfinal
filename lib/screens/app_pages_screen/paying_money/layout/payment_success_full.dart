import '../../../../config.dart';

class PaymentSuccessFullScreen extends StatelessWidget {
  const PaymentSuccessFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
        builder: (context1, bottomCtrl, child) {
      return DirectionalityRtl(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CommonAppBar(
                  title: appFonts.successfullyPaid, onTap: () => route.pop(context)),
              body:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Image.asset(eGifAssets.successFullPayment))),
                CommonAuthButton(text: appFonts.backToHome)
                    .paddingSymmetric(
                        vertical: Sizes.s40, horizontal: Sizes.s20)
                    .inkWell(onTap: () {
                  route.pop(context);
                  bottomCtrl.onTap(context);
                })
              ])));
    });
  }
}
