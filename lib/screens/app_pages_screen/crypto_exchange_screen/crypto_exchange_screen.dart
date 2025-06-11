import '../../../config.dart';
import 'crypto_exchange_widgets.dart';

class CryptoExchangeScreen extends StatelessWidget {
  const CryptoExchangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CryptoSendListProvider>(
        builder: (context1, cryptoSendListCtrl, child) {
      return DirectionalityRtl(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CommonAppBar(
              title: appFonts.exchange,
              isImageIconSvg: true,
              onTap: () => route.pop(context),
              isImageIcon: eSvgAssets.rotate),
          body: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            shrinkWrap: true,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Column(children: [
                  //exchange screen you send layout
                  CryptoExchangeWidgets()
                      .exchangeYouSendLayout(context),
                  //exchange screen exchange container design
                  CryptoExchangeWidgets().exchangeContainerDesign(context),
                  //exchange screen yo receive layout
                  CryptoExchangeWidgets()
                      .exchangeYouReceiveLayout(context),
                  //exchange screen exchange fee layout
                  CryptoExchangeWidgets().exchangeFeeLayout(context),
                  //exchange screen richText terms and conditions layout
                  CryptoExchangeWidgets().exchangeRichText(context)
                ]),VSpace(Sizes.s70),
                CommonAuthButton(text: appFonts.exchangeNow,onTap: () => route.pop(context))

              ]).padding(horizontal: Sizes.s20, vertical: Sizes.s20),
            ],
          ),
        ),
      );
    });
  }
}
