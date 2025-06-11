
import '../../../../../config.dart';

class AddManuallyDetails extends StatelessWidget {
  const AddManuallyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(backgroundColor: appColor(context).appTheme.screenBg,
        resizeToAvoidBottomInset: false,
        body: AuthBackgroundLayout(
          topText1: appFonts.addCard,
          topText2: appFonts.addYouCardDetails,
          isImage: true,
          top: Sizes.s40,
          topImage: eImageAssets.scanCard,
          child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            shrinkWrap: true,
            children: [
                  Column(

                  children: [
                    // add card details  card number, card holder name, expiryDate, cvv Layout
                    AddCardDetailsWidgets(). acdTextFiledLayout(context),
                    // add card details  card number, card holder name, expiryDate, cvv Layout
                    AddCardDetailsWidgets(). acdButtonLayout(context)
                  ]),
                ],
          ),
        ),
      ),
    );
  }
}
