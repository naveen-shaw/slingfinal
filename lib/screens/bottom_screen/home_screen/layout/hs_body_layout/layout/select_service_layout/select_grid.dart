import '../../../../../../../config.dart';

//Home screen select grid icon and title layout
class SelectServiceGrid extends StatelessWidget {
  const SelectServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService,HomeScreenProvider>(
      builder: (context1, themeCtrl,homeCtrl, child) {
        return SizedBox(
            height: Sizes.s190,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.90,
                    crossAxisSpacing: 1 * 1.5,
                    mainAxisSpacing: 1),
                itemCount: homeCtrl.selectService.length,
                // Set itemCount to the length of your list
                itemBuilder: (BuildContext context, int index) {
                  // Access data from each map
                  final Map<String, dynamic> e = homeCtrl.selectService[index];
                  return Column(children: [
                    Stack(children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("${e["icon"]}",
                                height: Sizes.s24,
                                width: Sizes.s24,
                                colorFilter: ColorFilter.mode(
                                    appColor(context).appTheme.darkText,
                                    BlendMode.srcIn),
                                fit: BoxFit.fill)
                          ]).selectExtension(context)
                    ]).padding(bottom: Sizes.s8),
                    TextWidgetCommon(
                      text:e["title"],
                      style: AppCss.latoMedium14
                          .textColor(appColor(context).appTheme.darkText),
                    )
                  ]);
                })).paddingOnly(top: Sizes.s10,bottom: Sizes.s15);
      },
    );
  }
}
