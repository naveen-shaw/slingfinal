

import '../../../../../../config.dart';

class HelpLayout extends StatelessWidget {
  const HelpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(eImageAssets.authBg), fit: BoxFit.fill)),
        child: Stack(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // help top text layout
            HelpWidgets().helpTextLayout(context).expanded(),
            //help  object image
            HelpWidgets().helpObjectImage().expanded(flex: 2),
            HSpace(Sizes.s15)
          ]),
          // help screen white backGround color & go to home button layout
          HelpWidgets().helpWightBgLayout(context)
        ]));
  }
}
