import '../../../../../../../config.dart';

// home screen news update all icon,title,date,name layout
class NewsUpdateLayout extends StatelessWidget {
  final dynamic data;
  final dynamic homeCtrl;

  const NewsUpdateLayout({super.key, this.data, this.homeCtrl});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(builder: (context1, languageCtrl, child) {
      return Row(children: [
        HSpace(Sizes.s15),
        Image.asset("${data['icon']}", height: Sizes.s86, width: Sizes.s110)
            ,
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: Sizes.s160,
                    child: TextWidgetCommon(
                        textAlign: TextAlign.start, text: data['title'])),
                VSpace(Sizes.s10),
                DottedLine(
                        alignment: WrapAlignment.center,
                        dashLength: 5.0,
                        dashGapLength: 2.0,
                        lineThickness: 1,
                        dashColor: appTheme.gray.withOpacity(0.2),
                        direction: Axis.horizontal)
                    , VSpace(Sizes.s5),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidgetCommon(
                              text: data['date'],
                              style: AppCss.latoMedium12.textColor(
                                  appColor(context).appTheme.lightText)),
                      TextWidgetCommon(
                          text: data['name'],
                          style: AppCss.latoMedium12.textColor(
                              appColor(context).appTheme.lightText))
                    ])
              ]).paddingSymmetric(vertical: Sizes.s5,horizontal: Insets.i15),
        )
      ]).paddingSymmetric(vertical: Sizes.s15).newsUpdateExtension(context);
    });
  }
}
