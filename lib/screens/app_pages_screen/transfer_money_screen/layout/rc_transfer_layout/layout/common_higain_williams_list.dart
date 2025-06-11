import '../../../../../../config.dart';

class CommonHigainWilliamsList extends StatelessWidget {
  const CommonHigainWilliamsList({super.key});

  @override
  Widget build(BuildContext context) {
    return   DirectionalityRtl(
      child: Container(
        color: appColor(context).appTheme.gray.withOpacity(0.07),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(eImageAssets.higgins),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgetCommon(
                        text: appFonts.higainWilliams,
                        style: AppCss.latoMedium14.textColor(
                            appColor(context).appTheme.darkText))
                        .padding(bottom: Sizes.s10),
                    TextWidgetCommon(
                        text: appFonts.recentNumber,
                        style: AppCss.latoMedium14.textColor(
                            appColor(context).appTheme.lightText))
                  ],
                ).padding(horizontal: Sizes.s12),
              ),
              PopupMenuButton(
                color: appColor(context).appTheme.screenBg,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      onTap: () =>
                          route.pushNamed(
                              context, routeName.payeeListScreen),
                      child: TextWidgetCommon(
                        text: appFonts.changePayee,
                      ),
                    ),
                  ];
                },
              )
            ]).padding(vertical: Sizes.s12, horizontal: Sizes.s20),
      ).paddingOnly(top: Sizes.s15),
    );
  }
}
