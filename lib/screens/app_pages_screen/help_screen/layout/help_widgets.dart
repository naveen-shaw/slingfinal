import '../../../../../../config.dart';

class HelpWidgets {
  // help top text layout
  Widget helpTextLayout(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.arrow_back_rounded,
                      color: appColor(context).appTheme.white))
              .padding(top: Sizes.s50)
              .inkWell(onTap: () => route.pop(context))
              .padding(horizontal: Sizes.s20),
          TextWidgetCommon(
                  text: appFonts.help,
                  style: AppCss.latoMedium16
                      .textColor(appColor(context).appTheme.white))
              .padding(top: Sizes.s50)
        ])
      ]);

  //help object image
  Widget helpObjectImage() =>
      Image(image: AssetImage(eImageAssets.objects), fit: BoxFit.fill)
          .padding(bottom: Sizes.s450);

  // help screen backGround color & go to home button layout
  Widget helpWightBgLayout(BuildContext context) {
    return Consumer<HelpScreenProvider>(builder: (context, helpCtrl, child) {
      return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
            height: .69.sh,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: appColor(context).appTheme.screenBg,
                borderRadius: SmoothBorderRadius.vertical(
                    top: SmoothRadius(
                        cornerRadius: Sizes.s20, cornerSmoothing: 2))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidgetCommon(
                      text: appFonts.whatIssueAre,
                      style: AppCss.latoSemiBold18
                          .textColor(appColor(context).appTheme.darkText))
                  .padding(top: Sizes.s30, bottom: Sizes.s20),
              Expanded(
                  flex: 2,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: helpCtrl.helpList.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(Sizes.s10),
                            child: Container(
                                color: appColor(context).appTheme.dividerColor,
                                child: ExpansionTile(
                                    key: Key(helpCtrl.selected.toString()),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,

                                    initiallyExpanded:
                                        index == helpCtrl.selectedTile,
                                    onExpansionChanged: (value) =>
                                        helpCtrl.expansionOnTap(value, index),
                                    childrenPadding: EdgeInsets.only(
                                        bottom: Sizes.s10, top: Sizes.s10),
                                    collapsedIconColor:
                                        appColor(context).appTheme.lightText,
                                    backgroundColor:
                                        appColor(context).appTheme.dividerColor,
                                    title: TextWidgetCommon(
                                        text: helpCtrl.helpList[index]
                                            ['title']),
                                    children: [
                                      TextWidgetCommon(
                                              text: helpCtrl.helpList[index]
                                                  ['subtitle'],
                                              style: AppCss.latoMedium14
                                                  .textColor(appColor(context)
                                                      .appTheme
                                                      .lightText)
                                                  .textHeight(1.2))
                                          .padding(horizontal: Sizes.s20)
                                    ]))).padding(
                            top: index == 0 ? Sizes.s0 : Sizes.s10);
                      }))
            ]).padding(horizontal: Sizes.s20))
      ]);
    });
  }
}
