import 'package:mpay/config.dart';

// select service layout
class SelectService extends StatelessWidget {
  const SelectService({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService,HomeScreenProvider>(builder: (context1, themeCtrl,homeCtrl, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // homeScreen heading title and see all layout
        CommonTitleText(
                title: appFonts.selectService,
                onTap: () =>
                    route.pushNamed(context, routeName.allServicesPage))
            .padding(horizontal: Sizes.s10, bottom: Sizes.s18, top: Sizes.s25),

        //Home screen select grid icon and title layout
        const SelectServiceGrid()
      ]).paddingSymmetric(horizontal: Sizes.s10);
    });
  }
}
