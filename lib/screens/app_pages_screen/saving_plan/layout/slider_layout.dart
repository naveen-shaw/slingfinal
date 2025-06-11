import '../../../../config.dart';

//saving plan icon,title,subtitle layout
class SliderLayout extends StatelessWidget {
  const SliderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(builder: (context1, homeCtrl, child) {
      return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(eImageAssets.monthlyCard),
                  fit: BoxFit.fill)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextWidgetCommon(
                  text: appFonts.totalSaving,
                  color: appColor(context).appTheme.white),
              TextWidgetCommon(
                  text: '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.savingAmountNumber)).toStringAsFixed(2)}',
                  style: AppCss.latoSemiBold18
                      .textColor(appColor(context).appTheme.white))
            ]).padding(bottom: Sizes.s10,horizontal: Sizes.s15),
            Theme(
                data: Theme.of(context).copyWith(
                    sliderTheme: SliderThemeData(
                        thumbShape: SquareSliderComponentShape(homeCtrl.sliderValue),
                )),
                child: Center(
                    heightFactor: .5,
                    child: Slider(
                        onChanged: (value) =>//slider change value
                            homeCtrl.sliderValueChange(value),
                        value: homeCtrl.sliderValue,
                        min: 0,
                        max: 100,
                        activeColor: appColor(context).appTheme.white,
                        inactiveColor: appColor(context)
                            .appTheme
                            .white
                            .withOpacity(0.2)))),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextWidgetCommon(
                text: appFonts.amountLeft,
                color: appColor(context).appTheme.white,
              ),
              TextWidgetCommon(
                  text: "\$${homeCtrl.sliderValue.toStringAsFixed(2)}",
                  style: AppCss.latoSemiBold18
                      .textColor(appColor(context).appTheme.white))
            ]).padding(horizontal: Sizes.s15,top: Sizes.s2)
          ]).padding( vertical: Sizes.s15));
    });
  }
}
