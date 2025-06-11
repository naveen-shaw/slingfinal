import '../../../../../config.dart';

//cards animation layout
class CardLayout extends StatelessWidget {
  const CardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<CardOnBoardProvider>(context);
    return Stack(alignment: Alignment.topCenter, children: [
      CommonCard(
          top: Sizes.s180,
          begin: -20.0,
          end: 0.8,
          controller: value.controller1,
          image: eImageAssets.card5,
          delay: 1.seconds),
      CommonCard(
          top: Sizes.s210,
          begin: -30.0,
          end: 0.9,
          controller: value.controller2,
          image: eImageAssets.card4,
          delay: 2.seconds),
      CommonCard(
          top: Sizes.s240,
          begin: -40.0,
          end: 1.0,
          controller: value.controller3,
          image: eImageAssets.card3,
          delay: 3.seconds),
      CommonCard(
          top: Sizes.s270,
          begin: -50.0,
          end: 1.1,
          controller: value.controller4,
          image: eImageAssets.card2,
          delay: 4.seconds),
      CommonCard(
          top: Sizes.s310,
          begin: -60.0,
          end: 1.2,
          controller: value.controller2,
          image: eImageAssets.card1,
          delay: 5.seconds),
    ]);
  }
}
