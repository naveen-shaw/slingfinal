import '../../../../../../../config.dart';

//bill details layout
class HSBillsDetailsLayout extends StatelessWidget {
  const HSBillsDetailsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService, HomeScreenProvider>(
      builder: (context1, themeCtrl, homeCtrl, child) {
        return Column(children: [
          // homeScreen heading title and see all layout
          CommonTitleText(
                  title: appFonts.billsDetails,
                  onTap: () =>
                      route.pushNamed(context, routeName.billDetailsScreen))
              .paddingOnly(top: Sizes.s25, bottom: Sizes.s18),
          // bill details grid layout
          const BillsDetailsGrid()
        ]).paddingSymmetric(horizontal: Sizes.s20);
      },
    );
  }
}
