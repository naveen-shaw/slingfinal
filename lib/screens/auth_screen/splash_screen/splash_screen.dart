import 'package:mpay/config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer<SplashProvider>(builder: (context1, splashCtrl, child) {
      return StatefulWrapper(
          onInit: () {
            splashCtrl.initState(context, this);
          },
          child: Scaffold(
              backgroundColor: appColor(context).appTheme.screenBg,
              body: Stack(children: [
                AnimatedPositioned(
                    bottom: splashCtrl.animation ? Sizes.s1500 : 145,
                    duration: const Duration(seconds: 5),
                    child: Image.asset(
                      eImageAssets.flash,
                      width: MediaQuery.of(context).size.width
                    ).marginOnly(left: Sizes.s4).center().animate(
                        effects: [FadeEffect(duration: 3.seconds)]).fade()),
                AnimatedPositioned(
                    bottom: splashCtrl.animation
                        ? Sizes.s1500
                        : (MediaQuery.of(context).size.height / 2.5),
                    left: MediaQuery.of(context).size.width / 4,
                    duration: const Duration(seconds: 5),
                    child: Image.asset(eImageAssets.logo,
                            height: Sizes.s150,
                            width: Sizes.s200,
                            fit: BoxFit.fill)
                        .paddingOnly(bottom: Sizes.s100)
                        .animate()
                        .fade(delay: 1.seconds, duration: 3.seconds)),
                AnimatedPositioned(
                    duration: const Duration(seconds: 3),
                    bottom: MediaQuery.of(context).size.height /
                        splashCtrl.bottom.toDouble(),
                    child: Stack(alignment: Alignment.center, children: [
                      Positioned(
                          top: MediaQuery.of(context).size.height /  (splashCtrl.animation ?Sizes.s9 :  7.4),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [Image.asset(eImageAssets.bubble1,fit: BoxFit.fill,width:MediaQuery.of(context).size.width ,)])),
                      Image.asset(eImageAssets.rocket,
                          height: Sizes.s220, fit: BoxFit.fill)
                    ]).width(MediaQuery.of(context).size.width)),
                AnimatedPositioned(
                    duration: const Duration(seconds: 3),
                    top: MediaQuery.of(context).size.height /
                        (splashCtrl.animation ? 1500 : 1),
                    child: Image.asset(eImageAssets.splashBg,fit: BoxFit.fill,width:MediaQuery.of(context).size.width ,
                        height: MediaQuery.of(context).size.height))
              ]).width(MediaQuery.of(context).size.width).backgroundLinearGradient(colors: [
                appColor(context).appTheme.primary,
                appColor(context).appTheme.gradient
              ])));
    });
  }
}
