import '../../../../config.dart';

class CardsOnboardScreen extends StatefulWidget {
  const CardsOnboardScreen({Key? key}) : super(key: key);

  @override
  State<CardsOnboardScreen> createState() => _CardsOnboardScreenState();
}

class _CardsOnboardScreenState extends State<CardsOnboardScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer2<CardOnBoardProvider, ThemeService>(
      builder: (context1, cardOnBoardCtrl, themeCtrl, child) {
        return StatefulWrapper(
          onInit: () => cardOnBoardCtrl.initState(this),
          child: DirectionalityRtl(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(themeCtrl.isDarkMode
                            ? eImageAssets.introDarkBg
                            : eImageAssets.intro),
                        fit: BoxFit.fill)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    //top add account Board  animation Layout
                    CardOnBoardWidgets().topBoardLayout(themeCtrl),
                    //bottom Manage your finance in... Text,signIn,SignUp Buttons layout
                    CardOnBoardWidgets().bottomLayout(context),
                    //cards animation layout
                    const CardLayout().paddingSymmetric(vertical: Sizes.s20)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
