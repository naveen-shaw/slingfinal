
import '../../../config.dart';

class CryptoRequestScreen extends StatelessWidget {
  const CryptoRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CryptoSendListProvider>(
        builder: (context1, cryptoSendListCtrl, child) {
      return DirectionalityRtl(
        child: Scaffold(resizeToAvoidBottomInset: false,
            appBar: CommonAppBar(
                title: appFonts.request,
                isImageIconSvg: true,
                onTap: () => route.pop(context),
                isImageIcon: eSvgAssets.rotate),
            body: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //crypto screen request screen details layout
                    CryptoRequestWidget()
                        .cryptoRequestDetails( context),VSpace(Sizes.s280),
                    CommonAuthButton(text: appFonts.sentRequest,onTap: () =>  CryptoRequestWidget()
                        .cryptoReqDialogLayout(context))

                        .padding(bottom: Sizes.s20)
                  ],
                ).padding(vertical: Sizes.s20, horizontal: Sizes.s15),
              ],
            )),
      );
    });
  }
}
