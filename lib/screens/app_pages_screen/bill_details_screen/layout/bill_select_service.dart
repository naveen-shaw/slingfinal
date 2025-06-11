import '../../../../config.dart';

class BillSelectServiceLayout extends StatelessWidget {
  const BillSelectServiceLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(
              text: appFonts.selectService, style: AppCss.latoSemiBold18)
          .padding(bottom: Sizes.s18, top: Sizes.s18),
      //bill select grid layout
      const SelectServiceGrid()
    ]);
  }
}
