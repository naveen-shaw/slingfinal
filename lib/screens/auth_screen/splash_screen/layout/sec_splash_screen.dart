import 'package:mpay/config.dart';

class SecSplashScreen extends StatelessWidget {
  const SecSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder:(context, themeCtrl, child) {
        return StatefulWrapper(
          onInit: () {
           /* Future.delayed(const Duration(seconds: 3)).then(
                (value) => route.pushReplacementNamed(context, routeName.onBoard));*/
          },
          child: Scaffold(
            body: SizedBox(height: 1.9.sh,width: 1.9.sw,
              child: Image.asset(eImageAssets.splashBg,
                   fit: BoxFit.fill)
            )
          )
        );
      }
    );
  }
}
