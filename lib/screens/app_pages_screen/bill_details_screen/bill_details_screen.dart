
import '../../../config.dart';

class BillDetailsScreen extends StatelessWidget {
  const BillDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          backgroundColor: appColor(context).appTheme.screenBg,
          //bill pay text layout
          appBar: CommonAppBar(
            onTap: () => route.pop(context),
            title: appFonts.billPay,
          ),
          body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //This month check list layout
                    ThisMonthChecklistLayout(),
                    //bill select service layout
                    BillSelectServiceLayout(),
                    //last paid layout
                    LastPaidLayout()
                  ]).paddingSymmetric(horizontal: Sizes.s20))),
    );
  }
}
