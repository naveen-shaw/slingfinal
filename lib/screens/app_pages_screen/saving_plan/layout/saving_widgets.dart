


import '../../../../config.dart';

class MySavingPlanWidget {
  // saving plan grid category  icon,title,subtitle layout
  Widget gridLayout(SavingPlanProvider savingCtrl) {
    return Expanded(
        flex: 2,
        child: GridView.builder(
            itemCount: savingCtrl.savingPlanList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20, childAspectRatio: .85),
            itemBuilder: (context, index) {
              var e = savingCtrl.savingPlanList[index];
              //saving plan icon,title,subtitle layout
              return SavingPlanWidgets()
                  .savingPlanLayout(savingCtrl.savingPlanList[index], context,false)
                  .inkWell(
                      onTap: () => commonDialog(context, false,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              text:
                                  '${language(context, appFonts.savingFor)} ${language(context, e['title'])}',
                              children: [
                                Container(
                                        child: SvgPicture.asset(
                                                fit: BoxFit.fitWidth,
                                                "${e['icon']}")
                                            .padding(all: Sizes.s20))
                                    .height(Sizes.s100)
                                    .width(Sizes.s100)
                                    .decorated(
                                        color: appColor(context)
                                            .appTheme
                                            .gray
                                            .withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(Sizes.s10))
                                    .padding(bottom: Sizes.s20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextWidgetCommon(
                                        text: appFonts.savingAmount),
                                    TextWidgetCommon(
                                        color: appColor(context)
                                            .appTheme
                                            .lightText,
                                        text:
                                            "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['price'])).toStringAsFixed(2)}"),
                                  ],
                                ).padding(bottom: Sizes.s20),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextWidgetCommon(
                                          text: appFonts.dueAmount),
                                      TextWidgetCommon(
                                          color: appColor(context)
                                              .appTheme
                                              .primary,
                                          text:
                                              "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['dueAmount'])).toStringAsFixed(2)}")
                                    ]).padding(bottom: Sizes.s30),
                                CommonAuthButton(
                                  text: appFonts.okay,
                                ).inkWell(onTap: () => route.pop(context))
                              ]));
            }));
  }

//add saving Goals dialog layout
  addDialogLayout(context) {
    commonDialog(context, false, text: appFonts.addSavingGoals, children: [
      Consumer<SavingPlanProvider>(builder: (context, savingCtrl, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidgetCommon(text: appFonts.category),
            CommonDropDownMenu(
                    value: savingCtrl.selectCategory,
                    onChanged: (value) =>
                        savingCtrl.selectCategoryOnChange(value),
                    hintText: appFonts.selectCategory,
                    itemsList: savingCtrl.savingDropDownItems
                        .map((item) => DropdownMenuItem(
                            value: item['value'],
                            child: TextWidgetCommon(text: item['label'])))
                        .toList())
                .padding(top: Sizes.s8, bottom: Sizes.s15),
            TextWidgetCommon(text: appFonts.title),
            TextFiledCommon(hintText: appFonts.addTitle)
                .padding(top: Sizes.s8, bottom: Sizes.s15),
            TextWidgetCommon(text: appFonts.savingAmount),
            TextFiledCommon(hintText: appFonts.addAmount)
                .padding(top: Sizes.s8, bottom: Sizes.s30),
            CommonAuthButton(text: appFonts.addSavingPlan).inkWell(onTap: () {
              route.pop(context);
              commonDialog(context, false,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  text: appFonts.successfullyAdded,
                  children: [
                    Image.asset(eImageAssets.successFullyTransfer)
                        .padding(bottom: Sizes.s30),
                    TextWidgetCommon(
                        text: appFonts.weHaveAddedYourAdditional,
                        textAlign: TextAlign.center)
                  ]);
            })
          ],
        );
      }),
    ]);
  }
}
