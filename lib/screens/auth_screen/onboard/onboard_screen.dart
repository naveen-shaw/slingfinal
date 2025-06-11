import 'package:mpay/config.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer2<OnBoardProvider,ThemeService>(
      builder: (context1, onBoardCtrl, themeCtrl,child) {
        return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150).then((value) => onBoardCtrl.initState(this)),
          child: DirectionalityRtl(
            child: Scaffold(
              backgroundColor: appColor(context).appTheme.screenBg,
              resizeToAvoidBottomInset: false,
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(themeCtrl.isDarkMode?eImageAssets.introDarkBg:eImageAssets.intro), fit: BoxFit.fill)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // onBoard background lines
                     LinesLayout(themeCtrl),
                    //OnBoard bottom The best payment method...text,skip and container nextScreen button layout
                    const OnBoardBottomLayout(),
                    //onBoard manage your finance wisely animation layout
                    if (onBoardCtrl.animation != null)
                      const OnBoardAnimationLayout(),
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
