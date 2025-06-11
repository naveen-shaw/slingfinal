import '../../../../../../../config.dart';

//news update list layout
class HSNewsUpdate extends StatelessWidget {
  const HSNewsUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService, HomeScreenProvider>(
        builder: (context1, themeCtrl, homeCtrl, child) {
      return Column(children: [
        CommonTitleText(
                title: appFonts.newsUpdate,
                onTap: () =>
                    route.pushNamed(context, routeName.newsUpdateScreen))
            .padding(bottom: Sizes.s18, top: Sizes.s20),
        SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
                children: homeCtrl.newsUpdate
                    // home screen news update all icon,title,date,name layout
                    .map((e) => NewsUpdateLayout(data: e))
                    .toList()))
      ]).paddingSymmetric(horizontal: Sizes.s20);
    });
  }
}
