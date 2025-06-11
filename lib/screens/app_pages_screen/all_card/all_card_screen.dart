import 'package:mpay/config.dart';

class AllCardScreen extends StatelessWidget {
  const AllCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllCardsProvider>(builder: (context1, cardsCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => cardsCtrl.init()),
        child: DirectionalityRtl(
          child: Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: appColor(context).appTheme.screenBg,
              appBar: CommonAppBar(
                onTap: () => route.pop(context),
                title: appFonts.myCards,
                isImageIconSvg: true,
                imageIconTap: () => editAndAddDialog(context,
                    title: appFonts.addACard),
                isImageIcon: eSvgAssets.add
              ),
              body: SingleChildScrollView(
                child: Column(
                        children: cardsCtrl.allCards
                            .map((e) => Stack(children: [
                                  Image.asset(e['bg'],width:Sizes.s400,fit: BoxFit.fill)
                                      .padding(bottom: Sizes.s25),
                                  Column(children: [
                                    //visa and more horiz icon layout
                                    AllCardsWidgets()
                                        .visaIconLayout(context, e, cardsCtrl),
                                    // account number,name and chip layout
                                    AllCardsWidgets()
                                        .acNumberChipLayout(context, e),
                                    //amount,exp.date,cvv layout
                                    AllCardsWidgets()
                                        .amountExpCvvLayout(context, e)
                                  ]).padding(
                                      horizontal: Sizes.s16, top: Sizes.s5)
                                ]))
                            .toList())
                    .padding(horizontal: Sizes.s20, top: Sizes.s10),
              )),
        ),
      );
    });
  }
}
