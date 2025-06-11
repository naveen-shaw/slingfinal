import 'package:mpay/config.dart';

class SavingPlanScreen extends StatelessWidget {
  const SavingPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SavingPlanProvider>(builder: (context1, savingCtrl, child) {
      return StatefulWrapper(onInit: ()=>Future.delayed(DurationClass.ms150).then((value) => savingCtrl.init()),
        child: DirectionalityRtl(
          child: Scaffold(resizeToAvoidBottomInset: false,
            appBar: CommonAppBar(
              imageIconTap: () => //add saving Goals dialog layout
                  MySavingPlanWidget().addDialogLayout(context),
              title: appFonts.mySavingPlans,
              isImageIcon: eSvgAssets.add,
              isImageIconSvg: true,
              onTap: () => route.pop(context),
            ),
            body: Column(children: [
              //saving plan total saving, slider , amount left layout
              const SliderLayout().padding(bottom: Sizes.s25),
              //saving plan icon,title,subtitle and category dialog layout
              MySavingPlanWidget().gridLayout(savingCtrl)
            ]).padding(all: Sizes.s20),
          ),
        ),
      );
    });
  }
}
