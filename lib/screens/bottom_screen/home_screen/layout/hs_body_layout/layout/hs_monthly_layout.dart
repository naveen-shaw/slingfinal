import '../../../../../../config.dart';

//monthly layout
class HSMonthlyLayout extends StatelessWidget {
  const HSMonthlyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Stack(children: [
        Image.asset(
          eImageAssets.monthlyCard,
          fit: BoxFit.fill,
          height: Sizes.s78,
        ),
        Row(children: [
          Image.asset(
            eImageAssets.monthly,
            height: Sizes.s50,
          ).paddingSymmetric(horizontal: Sizes.s15, vertical: Sizes.s15),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidgetCommon(
                        text: appFonts.monthlyStatistics,
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.white))
                    .padding(bottom: Sizes.s5),
                TextWidgetCommon(
                  text: appFonts.betterPerformance,
                  style: AppCss.latoMedium12.textColor(
                      appColor(context).appTheme.white.withOpacity(0.7)),
                )
              ])
        ])
      ])
    ]).padding(horizontal: Sizes.s20);
  }
}
