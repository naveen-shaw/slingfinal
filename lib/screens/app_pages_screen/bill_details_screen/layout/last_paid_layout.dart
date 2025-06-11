
import '../../../../config.dart';

class LastPaidLayout extends StatelessWidget {
  const LastPaidLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //last paid text layout
        TextWidgetCommon(
          text: appFonts.lastPaid,
          style: AppCss.latoSemiBold18,
        ).padding( bottom: Sizes.s18),
        //last paid list icon, title, date, price,time layout
        const LastPaidLitLayout()
      ],
    ).padding(bottom: Sizes.s50);
  }
}
