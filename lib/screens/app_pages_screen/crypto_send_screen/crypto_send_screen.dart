import '../../../config.dart';

class CryptoSendScreen extends StatelessWidget {
  const CryptoSendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CryptoSendListProvider>(
        builder: (context1, cryptoSendListCtrl, child) {
      return DirectionalityRtl(
        child: StatefulWrapper(onInit: ()=>Future.delayed(DurationClass.ms150)
          .then((value) => cryptoSendListCtrl.init()),
          child: Scaffold(resizeToAvoidBottomInset: false,
              appBar: CommonAppBar(
                  title: appFonts.send,
                  isImageIconSvg: true,
                  onTap: () => route.pop(context),
                  isImageIcon: eSvgAssets.rotate),
              body: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  shrinkWrap: true,
                  children: [
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //crypto screen send screen select digital assets dropdown,amount dropdown layout
                          CryptoSendWidgets()
                              .selectDigitalAssets(context),
                          //crypto screen send screen recipient name, recipient address, note layout
                          CryptoSendWidgets()
                              .recipientLayout(context),
                          CommonAuthButton(text: appFonts.send,onTap:() =>//crypto screen send screen dialog layout
                          CryptoSendWidgets().cryptoSendDialog(context))
                              .padding(bottom: Sizes.s20, top: Sizes.s45)
                        ]).padding(horizontal: Sizes.s20, vertical: Sizes.s20),
                      ])),
        ),
      );
    });
  }
}
