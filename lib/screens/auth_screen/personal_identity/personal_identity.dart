import '../../../../config.dart';
import 'layout/address_layout.dart';
import 'layout/date_of_birth_layout.dart';
import 'layout/nri_status_layout.dart';

class PersonalIdentityScreen extends StatelessWidget {
  const PersonalIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appColor(context).appTheme.screenBg,
          body: AuthBackgroundLayout(
              topText1: appFonts.personalIdentity,
              topText2: appFonts.fillUpTheForm,
              topImage: eImageAssets.signUpTwo,
              isImage: true,
              top: Sizes.s28,
              child: ListView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Permanent Address
                      const AddressLayout(
                        title: 'Permanent Address',
                        addressCategory: 'PERMANENT',
                      ),
                      // Communication Address
                      const AddressLayout(
                        title: 'Communication Address',
                        addressCategory: 'COMMUNICATION',
                      ),
                      // Date of Birth
                      const DateOfBirthLayout(),
                      // NRI Status
                      const NRIStatusLayout(),
                      // Continue Button
                      PersonalIdentityWidgets().piBottomLayout(context)
                    ],
                  ),
                ],
              ))),
    );
  }
}
