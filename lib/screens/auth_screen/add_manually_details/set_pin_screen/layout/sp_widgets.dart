import '../../../../../../config.dart';

class SetPinWidgets {
  // set pin screen save button layout
  Widget spButtonLayout(BuildContext context) =>
      CommonAuthButton(text: appFonts.save)
          .padding(top: Sizes.s10, bottom: Sizes.s15)
          .inkWell(
            onTap: () =>
                route.pushNamed(context, routeName.completeVerificationScreen),
          )
          .padding(bottom: Sizes.s40);
}
