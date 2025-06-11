import '../../../../config.dart';

class PayingLoadingScreen extends StatelessWidget {
  const PayingLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentSuccessFullProvider>(
      builder: (context1, paymentCtrl, child) {
        return StatefulWrapper(
          onInit: () {
            paymentCtrl.onInit(context);
          },
          child: DirectionalityRtl(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CommonAppBar(
                  title: appFonts.payMoney, onTap: () => route.pop(context)),
              body: Center(child: Image.asset(eGifAssets.payLoader)),
            ),
          ),
        );
      },
    );
  }
}
